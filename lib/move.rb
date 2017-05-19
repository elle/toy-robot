require "forwardable"

class Move
  attr_reader :position

  extend Forwardable

  def_delegators :@position, :x, :y, :direction

  def initialize(position: position)
    @position = position
  end

  def go
    self.send "go_#{direction}"
  end

  private

  def go_north
    create_position(x, y + 1, direction)
  end

  def go_east
    create_position(x + 1, y, direction)
  end

  def go_south
    create_position(x, y - 1, direction)
  end

  def go_west
    create_position(x - 1, y, direction)
  end

  def create_position(x,y,f)
    Position.new(x, y, f)
  end
end


