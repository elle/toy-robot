require "test_helper"

describe ValidMove do
  context "when valid move" do
    it "returns true" do
      result = ValidMove.verify(robot: Robot.new, board: Board.new)

      assert result
    end
  end

  context "when facing edge of board" do
    it "returns false" do
      position = Position.new(x: 0, y: 0, direction: :south)
      robot = Robot.new(position: position)
      board = Board.new
      result = ValidMove.verify(robot: robot, board: board)

      refute result
    end
  end
end
