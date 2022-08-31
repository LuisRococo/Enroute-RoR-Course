class CreateComputer < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :name_of_user
      t.decimal :screen_width, precision: 4, scale: 2
      t.text :description, default: ''
      t.string :processor
      t.string :graphics_card
      t.string :storage
      t.integer :storage_capacity
      t.date :buy_date, default: Date.today
      t.string :power_supply
      t.integer :fans_quantity
      t.timestamps
    end
  end
end
