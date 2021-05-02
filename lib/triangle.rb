class Triangle
   attr_accessor :a, :b, :c
  #
  # def initialize(attributes)
  #   attributes.each {|key, value| self.send(("#{key}="), value)}
  # end

  
  def initialize a, b, c
    @sides = [a, b, c]
    @a, @b, @c = [a,b,c].sort
    raise TriangleError unless valid_triangle?
    @type = triangle_type
    #attributes.each {|key, value| self.send(("#{key}="), value)}
  end

#+++++
  def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  raise TriangleError if a <= 0 or a + b <= c
  return :equilateral if a == c
  return :isosceles if a == b or b == c
  return :scalene
end

  def valid_triangle?
    !!(@a > 0 && @a + @b > @c)
  end
  def triangle_type
    [:equilateral, :isosceles, :scalene][[@a, @b, @c].uniq.size -1]
  end

   class TriangleError < StandardError
  end

end
class TriangleError < StandardError
end
