class Triangle
   attr_accessor :a, :b, :c
  #
  # def initialize(attributes)
  #   attributes.each {|key, value| self.send(("#{key}="), value)}
  # end


  def initialize(a, b, c)#(attributes) 
    @a = a
    @b = b
    @c = c

    # rescue ExceptionName
    #
    # end
    # @sides = [a, b, c]
    # @a, @b, @c = [a,b,c].sort
    # raise TriangleError unless valid_triangle?
    # @type = triangle_type
   [:a, :b , :c].each {|key, value| self.send(("#{key}="), value)}
  end

#+++++
  def triangle(a, b, c)
   sorted_triangle_lengths = [a, b, c].sort
  raise TriangleError if (sorted_triangle_lengths[0] + sorted_triangle_lengths[1] <= sorted_triangle_lengths)
  raise TriangleError if (a <= 0 || b <= 0 || c <= 0)
  return :equilateral if (a == b && b == c && a == c)
  return :isosceles if (a == b) || (a == c) || (b == c)
  return :scalene
end

  # def valid_triangle?
  #   !!(@a > 0 && @a + @b > @c)
  # end
  # def triangle_type
  #   [:equilateral, :isosceles, :scalene][[@a, @b, @c].uniq.size -1]
  # end

   class TriangleError < StandardError
  end

end
