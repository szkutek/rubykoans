# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if a <= 0 or b <= 0 or c <= 0
    raise TriangleError, "Sides of the triangle need to have lenghts greater than 0"
  end
  if a + b <= c or a + c <= b or b + c <= a
    raise TriangleError, "Any two sides of a triangle should add up to more than the third side"
  end

  if a == b and a == c
    return :equilateral
  end
  if a == b or b == c or a == c
    return :isosceles
  end
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
