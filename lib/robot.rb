DIRECTIONS = [:north, :east, :south, :west]

class Robot
  attr_accessor :x, :y, :direction

  def initialize(x: 0, y: 0, direction: :north)
    @x, @y, @direction = x, y, direction
  end

  def to_s
    "X: #{x}, Y: #{y}, Direction: #{direction.capitalize}"
  end

  def left
    @direction = DIRECTIONS[index-1]
  end

  def right
    @direction = DIRECTIONS[index+1]
  end

  private

  def index
    DIRECTIONS.index(direction)
  end
end
