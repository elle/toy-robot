class Move
  attr_reader :position

  def initialize(position: position)
    @position = position
  end

  def go
    self.send "go_#{direction}"
  end

  private

  def direction
    position.direction
  end

  def go_north
    Position.new(
      x: position.x,
      y: position.y + 1,
      f: position.direction
    )
  end

  def go_east
    Position.new(
      x: position.x + 1,
      y: position.y,
      f: position.direction
    )
  end

  def go_south
    Position.new(
      x: position.x,
      y: position.y - 1,
      f: position.direction
    )
  end

  def go_west
    Position.new(
      x: position.x - 1,
      y: position.y,
      f: position.direction
    )
  end
end


