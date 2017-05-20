class Robot
  attr_accessor :x, :y, :f, :position

  def initialize(position = Position.new(0, 0))
    @position = position
    @f = "north"
  end

  def x
    position.x
  end

  def y
    position.y
  end

  def place(x,y,f)
    @position = Position.new(x, y)
    @f = f
  end
end
