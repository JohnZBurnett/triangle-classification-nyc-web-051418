class Triangle
  attr_accessor :length1, :length2, :length3
  # write code here
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if (length1 <= 0 || length2 <= 0 || length3 <= 0) || length1 + length2 <= length3 || length2 + length3 <= length1 || length3 + length1 <= length2
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      if length1 == length2 && length2 == length3
        :equilateral
      elsif length1 == length2 || length2 == length3 || length3 == length1
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Error! This is not a triangle!"
    end
  end
end

puts Triangle.new(4, 5, 18).kind
puts "Did the program get rescued?"
