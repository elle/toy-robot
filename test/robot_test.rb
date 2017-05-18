require "test_helper"

describe Robot do
  context "when initialized" do
    it "sets defaults" do
      robot = Robot.new

      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal :north, robot.direction
    end

    it "sets position and direction" do
      position = Position.new(x: 2, y: 2, direction: :south)
      robot = Robot.new(position: position)

      assert_equal 2, robot.x
      assert_equal 2, robot.y
      assert_equal :south, robot.direction
    end
  end

  describe "#to_s" do
    it "reports position" do
      robot = Robot.new
      position = "X: 0, Y: 0, Direction: North"

      assert_equal position, robot.to_s
    end
  end

  describe "#turn_left" do
    it "rotates to the left" do
      robot = Robot.new
      robot.turn_left

      assert_equal :west, robot.direction
    end
  end

  describe "#turn_right" do
    it "rotates to the right" do
      robot = Robot.new
      robot.turn_right

      assert_equal :east, robot.direction
    end
  end
end
