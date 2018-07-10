class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def triangle_finder
    if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      "Not a Triangle dummy"
    elsif @side_one == @side_two && @side_two == @side_three
      "Equilateral Triangle Dummy"
    elsif @side_one == @side_two || @side_one == @side_three || @side_three == @side_two
      "Isosceles Triangle Dummy"
    elsif  @side_one != @side_two && @side_two != @side_three
      "Scalene Triangle Dummy"
    end
  end
end
