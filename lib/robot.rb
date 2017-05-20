class Robot
  DIRECTIONS = [:north, :east, :south, :west]

  attr_accessor :x, :y, :f

  def initialize
    @x = 0
    @y = 0
    @f = "north"
  end

  def place(x,y,f)
    @x = x
    @y = y
    @f = f
  end

  def move
    case f
    when "north" then @y = y + 1
    when "east" then @x = x + 1
    when "south" then @y = y - 1
    when "west" then @x = x - 1
    end
  end
end
