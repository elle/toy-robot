class Board < Struct.new(:height, :width)
  def initialize(height=5, width=5)
    super
  end
end
