class Move
  attr_reader :position

  def initialize(position: position)
    @position = position
  end

  def go
    self.send "go_#{direction}"
    position
  end

  private

  def direction
    position.direction
  end

  def go_north
    position.y = position.y + 1
  end

  def go_east
    position.x = position.x + 1
  end

  def go_south
    position.y = position.y - 1
  end

  def go_west
    position.x = position.x - 1
  end
end


