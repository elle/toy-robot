require_relative "test_helper"

describe Board do
  it "initializes the board with 5x5" do
    board = Board.new

    assert_equal 5, board.height
    assert_equal 5, board.width
  end
end
