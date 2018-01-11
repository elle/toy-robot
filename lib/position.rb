class Position
  DIRECTIONS = [:north, :east, :south, :west].freeze

  attr_reader :x, :y, :f

  def initialize(x: 0, y: 0, f: :north)
    @x = x
    @y = y
    @f = f
  end

  def to_s
    [x,y,f]
  end
end
