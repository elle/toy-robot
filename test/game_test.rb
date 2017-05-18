require_relative "test_helper"

describe Game do
  describe "#place" do
    it "places a robot at specific location" do
      game = Game.new
      game.place(2,3,:south)

      assert_equal 2, game.robot.x
      assert_equal 3, game.robot.y
      assert_equal :south, game.robot.direction
    end
  end

  describe "#left" do
    it "rotates the robot to the left" do
      game = Game.new

      assert_equal :north, game.robot.direction

      game.left

      assert_equal 0, game.robot.x
      assert_equal 0, game.robot.y
      assert_equal :west, game.robot.direction
    end
  end

  describe "#right" do
    it "rotates the robot to the right" do
      game = Game.new

      assert_equal :north, game.robot.direction

      game.right

      assert_equal 0, game.robot.x
      assert_equal 0, game.robot.y
      assert_equal :east, game.robot.direction
    end
  end

  describe "#report" do
    it "delegates the report to robot" do
      game = Game.new
      report = "X: 0, Y: 0, Direction: North"

      assert_equal report, game.report
    end
  end

  describe "#move" do
    context "when a valid move" do
      it "moves the robot one tile the direction it is facing" do
        game = Game.new

        game.move

        assert_equal 0, game.robot.x
        assert_equal 1, game.robot.y
        assert_equal :north, game.robot.direction
      end
    end

    context "when invalid move" do
      it "keeps the robot's current_position" do
        position = Position.new(0, 0, :west)
        robot = Robot.new(position: position)
        game = Game.new(robot: robot)

        assert_equal 0, game.robot.x
        assert_equal 0, game.robot.y
        assert_equal :west, game.robot.direction
      end
    end
  end
end
