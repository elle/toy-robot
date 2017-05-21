class Position < Struct.new(:x, :y, :f)
  def to_s
    [x,y,f].join(",")
  end
end
