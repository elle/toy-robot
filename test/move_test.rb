require_relative "test_helper"

describe Move do

  it "has a robot" do
    robot = Robot.new
    move = Move.new(robot: robot)

    assert_equal robot, move.robot
  end

  it "has a board" do
    board = Board.new
    move = Move.new(board: board)

    assert_equal board, move.board
  end

  context "when valid move" do
    describe "#go " do
      it "goes north up on the y axis" do
        move = Move.new
        move.go

        assert_equal 1, move.robot.y
      end
    end

    it "goes east up on the x axis" do
      robot = Robot.new
      robot.place(0,0,"east")
      move = Move.new(robot: robot)
      move.go

      assert_equal 1, move.robot.x
    end

    it "goes south down on the y axis" do
      robot = Robot.new
      robot.place(1,1,"south")
      move = Move.new(robot: robot)
      move.go

      assert_equal 0, move.robot.y
    end

    it "goes west down on the x axis" do
      robot = Robot.new
      robot.place(1,1,"west")
      move = Move.new(robot: robot)
      move.go

      assert_equal 0, move.robot.x
    end
  end

  context "when invalid move" do
    it "remains in the same lcoation" do
      # robot = Robot.new
      # robot.place(0,4,"north")
      # move = Move.new(robot: robot)
      # move.go_north
    end
  end
end
