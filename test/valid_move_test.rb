require_relative "test_helper"

describe ValidMove do
  context "when valid move" do
    it "returns true" do
      result = ValidMove.verify(robot: Robot.new, board: Board.new)

      assert result
    end
  end

  context "when facing edge of board" do
    it "returns false" do
      position = Position.new(x: 0, y: 0, f: :south)
      robot = Robot.new(position: position)
      board = Board.new

      assert_raises "Invalid!" do
        ValidMove.verify(robot: robot, board: board)
      end
    end
  end
end
