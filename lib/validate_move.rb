class ValidateMove
  attr_reader :board, :position

  def initialize(position:, board: Board.new)
    @position = position
    @board = board
  end

  def call
    (0...board.width).include?(suggested_new_position.x) &&
      (0...board.height).include?(suggested_new_position.y)
  end

  private

  def suggested_new_position
    Move.new(position).go
  end
end
