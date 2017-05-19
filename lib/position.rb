# Y cooordinate
# ^
# |
# +--> X coordinate

class Position
  DIRECTIONS = [:north, :east, :south, :west]

  attr_accessor :x, :y, :direction

  def initialize(x: 0, y: 0, direction: :north)
    @x, @y, @direction = x, y, direction

    # Consider adding a more useful error message
    if invalid?
      raise "Invalid!"
    end
  end

  def left_direction
    DIRECTIONS[index-1]
  end

  def right_direction
    DIRECTIONS[index+1]
  end

  private

  def index
    DIRECTIONS.index(direction)
  end

  def invalid?
    !valid?
  end

  def valid?
    positive_coordinates && valid_direction
  end

  def positive_coordinates
    x >= 0 && y >= 0
  end

  def valid_direction
    DIRECTIONS.include? direction
  end
end
