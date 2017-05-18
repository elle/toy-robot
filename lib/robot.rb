class Robot
  attr_accessor :position

  def initialize(position: Position.new)
    @position = position
  end

  def x
    position.x
  end

  def y
    position.y
  end

  def direction
    position.direction
  end

  def to_s
    "X: #{x}, Y: #{y}, Direction: #{direction.capitalize}"
  end

  def turn_left
    @position = position.left
  end

  def turn_right
    @position = position.right
  end
end
