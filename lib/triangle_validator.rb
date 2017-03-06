class TriangleValidator
  def valid?(sides)
    side_1, side_2, side_3 = sides

    ((side_1 + side_2) > side_3) &&
    ((side_1 + side_3) > side_2) &&
    ((side_2 + side_3) > side_1)
  end
end
