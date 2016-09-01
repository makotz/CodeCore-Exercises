class Rectangle
  attr_accessor :width, :length

  def area
    width * length
  end

  def is_square?
    length == width
  end

end
