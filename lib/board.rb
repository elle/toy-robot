class Board
  attr_reader :height, :width

  def initialize(height: 5, width: 5)
    @height, @width = height, width
  end
end
