# Y cooordinate
# ^
# |
# +--> X coordinate

class Position
  attr_reader :x, :y, :direction

  def initialize(x: 0, y: 0, direction: :north)
    @x, @y, @direction = x, y, direction
  end
end
