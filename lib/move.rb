require "forwardable"

class Move
  attr_reader :position

  extend Forwardable

  def_delegators :@position, :x, :y, :f

  def initialize(position)
    @position = position
  end

  def go
    self.send "go_#{f}"
  end

  private

  def go_north
    create_position(x, y + 1, f)
  end

  def go_east
    create_position(x + 1, y, f)
  end

  def go_south
    create_position(x, y - 1, f)
  end

  def go_west
    create_position(x - 1, y, f)
  end

  def create_position(x,y,f)
    Position.new(x: x, y: y, f: f)
  end
end
