class CardHand
  @@CARD_ORDER = ['2', '3', '4', '5', '6', '7', '8', '9', 'J', 'Q', 'K', 'A']

  def initialize(cards)
    set_cards(cards)
  end

  def set_cards(cards)
    @cards = cards_to_array_hash(cards)
  end

  def poker_combination()
    return 'Royal flush' if royal_flush?(@cards)
    return 'Straight flush' if straight_flush?(@cards)
    return 'Four of a kind' if four_of_a_kind?(@cards)
    return 'Full house' if full_house?(@cards)
    return 'Flush' if flush?(@cards)
    return 'Straight' if straight?(@cards)
    return 'Three of a king' if three_of_a_king?(@cards)
    return 'Two pairs' if two_pair?(@cards)
    return 'Pair' if pair?(@cards)
    return 'High card' if high_card?(@cards)
    'None'
  end

  private

  def high_card?(cards)
    return false unless cards.size == 5
    same_value_by_group?(cards, 1, 5)
  end

  def pair?(cards)
    return false unless cards.size == 5
    same_value_by_group?(cards, 2, 1)
  end

  def two_pair?(cards)
    return false unless cards.size == 5
    checks = []
    checks.push(same_value_by_group?(cards, 2, 2))
    checks.push(same_value?(cards, 1))

    checks.all? { |value| value }
  end

  def three_of_a_king?(cards)
    return false unless cards.size == 5
    checks = []
    checks.push(same_value?(cards, 3))
    checks.push(same_value?(cards, 1))

    checks.all? { |value| value }
  end

  def straight?(cards)
    return false unless cards.size == 5
    successive_order?(cards)
  end

  def flush?(cards)
    return false unless cards.size == 5
    same_suit?(cards)
  end

  def full_house?(cards)
    return false unless cards.size == 5
    checks = []
    checks.push(same_value?(cards, 3))
    checks.push(same_value?(cards, 2))

    checks.all? { |value| value }
  end

  def straight_flush?(cards)
    return false unless cards.size == 5
    checks = []
    checks.push(same_suit?(cards))
    checks.push(successive_order?(cards))

    checks.all? { |value| value }
  end

  def royal_flush?(cards)
    return false unless cards.size == 5
    checks = []
    
    checks.push (same_suit?(cards))
    checks.push (cards[0][:value] == 'A')
    checks.push (cards[1][:value] == 'K')
    checks.push (cards[2][:value] == 'Q')
    checks.push (cards[3][:value] == 'J')
    checks.push (value_ten?(cards[4]))
  
    checks.all? { |value| value }
  end

  def four_of_a_kind?(cards)
    return false unless cards.size == 5
    same_value?(cards, 4)
  end
  
  def value_ten?(card)
    value_of_ten = ['J', 'Q', 'K']
    value_of_ten.any? { |value| card[:value] == value }
  end
  
  def card_to_hash(card)
    { value: card[0], suit: card[1] }
  end
  
  def cards_to_array_hash(cards)
    card_array = []
    cards.each do |card|
      card_array.push(card_to_hash(card))
    end
    card_array
  end
  
  def same_suit?(cards)
    return false if cards.size.zero?
    suit = cards[0][:suit]
    cards.all? { |card| card[:suit] == suit }
  end

  def same_value?(cards, quantity)
    cards_uniq = cards.uniq
    counter_array = []
    cards_uniq.each do |uniq_card|
      counter = 0
      cards.each do |card|
        counter += 1 if uniq_card[:value] == card[:value]
      end
      counter_array.push(counter)
    end

    counter_array.include?(quantity)
  end

  def cards_to_values_arr(cards)
    value_arr = []
    cards.each do |card|
      value_arr.push(card[:value])
    end
    value_arr
  end

  def same_value_by_group?(cards, quantity, groups)
    values_uniq = cards_to_values_arr(cards).uniq
    counter_array = []
    values_uniq.each do |value|
      counter = 0
      cards.each do |card|
        counter += 1 if value == card[:value]
      end
      counter_array.push(counter)
    end

    counter_array.count(quantity) == groups
  end

  def successive_order?(cards)
    return false if cards.size.zero?
    card_order_index = @@CARD_ORDER.find_index(cards[0][:value])
    card_index = 0
    while (card_index < cards.size && card_order_index < @@CARD_ORDER.size)
      return false unless cards[card_index][:value] == @@CARD_ORDER[card_order_index]
      card_index += 1
      card_order_index += 1
    end
    true
  end
end
