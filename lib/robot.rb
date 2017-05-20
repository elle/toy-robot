class Robot
  attr_accessor :x, :y, :f, :position

  def initialize(position = Position.new(0, 0, "north"))
    @position = position
  end

  def x
    position.x
  end

  def y
    position.y
  end

  def f
    position.f
  end

  def place(x,y,f)
    @position = Position.new(x, y, f)
  end
end
