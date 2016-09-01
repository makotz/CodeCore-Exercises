class Rectangle

  attr_accessor :height, :width
  # def height = (value)
  #   @height = value
  # end
  #
  # def height
  #   @height
  # end

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    height * width
  end

  def is_square?
    height == width
  end

end
