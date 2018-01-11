require_relative "test_helper"

describe Board do
  it "defaults to 5x5" do
    board = Board.new

    assert_equal 5, board.height
    assert_equal 5, board.width
  end

  it "sets custom size" do
    board = Board.new(3, 4)

    assert_equal 3, board.height
    assert_equal 4, board.width
  end
end

