class Shape

    attr_accessor :color, :filled
    protected :color, :filled

    def initialize (color, filled)
        @color = color
        @filled = filled
    end

    def get_area ()
    end

    def get_perimeter ()
    end

    def to_s ()
        return "Shape[color=#{@color}, filled=#{@filled}"
    end

end

class Circle < Shape

    attr_accessor :radius

    def initialize (radius, color, filled)
        super color, filled
        @radius = radius
    end

    def get_area ()
        return Math::PI * (@radius ** 2)
    end

    def get_perimeter ()
        return (Math::PI * (@radius * 2))
    end

    def to_s ()
        return "Shape[color=#{@color}, filled=#{@filled}, radius=#{@radius}"
    end

end

class Rectangle < Shape

    attr_accessor :width, :length

    def initialize (width, length, color, filled)
        super color, filled
        @width = width
        @length = length
    end

    def get_area ()
        return @width * @length
    end

    def get_perimeter ()
        return 2 * (@width + @length)
    end

    def to_s ()
        return "Shape[color=#{@color}, filled=#{@filled}, width=#{@width}, length=#{@length}"
    end

end

class Square < Rectangle

    attr_reader :side
    attr_reader :width, :length

    def initialize (side, color, filled)
        super side, side, color, filled
        @side = side
    end

    def side=(side)
        @width = side
        @length = side
        @side = side
    end

    def width=(width)
        @width = width
        @length = width
        @side =width
    end
    
    def length=(length)
        @heigth = length
        @length = length
        @side = length
    end

    def to_s ()
        return "shape=#{@color}, filled=#{@filled}, width=#{width}, length=#{@length}"
    end

end

# Execution Area

puts "CIRCLE"
puts "-" * 30
circle = Circle.new 3, "Purple", true
puts circle.radius
puts circle.get_perimeter
puts circle.get_area
puts circle

puts "RECTANGLE"
puts "-" * 30
rectangle = Rectangle.new 10, 6, "Red", true
puts rectangle.width
puts rectangle.length
puts rectangle.get_perimeter
puts rectangle.get_area
puts rectangle

puts "SQUARE"
puts "-" * 30
square = Square.new 5, "Yellow", false
puts square.width
puts square.length
puts square.get_perimeter
puts square.get_area
puts square
square.side= 20
puts square
square.width= 30
puts square