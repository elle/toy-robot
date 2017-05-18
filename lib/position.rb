# Y cooordinate
# ^
# |
# +--> X coordinate

DIRECTIONS = [:north, :east, :south, :west]

class Position
  attr_accessor :x, :y, :direction

  def initialize(x: 0, y: 0, direction: :north)
    @x, @y, @direction = x, y, direction
  end

  def left
    @direction = DIRECTIONS[index-1]
    self
  end

  def right
    @direction = DIRECTIONS[index+1]
    self
  end

  private

  def index
    DIRECTIONS.index(direction)
  end
end
