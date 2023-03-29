#class Triangle
  # write code here
#end

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
    raise TriangleError, "Invalid triangle" unless valid?
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  private

  def valid?
    a > 0 && b > 0 && c > 0 && a + b > c && b + c > a && c + a > b
  end

  class TriangleError < StandardError
  end
end
