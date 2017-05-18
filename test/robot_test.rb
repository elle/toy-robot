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
      robot = Robot.new(x: 2, y: 2, direction: :south)

      assert_equal 2, robot.x
      assert_equal 2, robot.y
      assert_equal :south, robot.direction
    end

    # describe "when non-existant direction"
    # describe "when out of range coordinates"
  end

  describe "#to_s" do
    it "reports position" do
      robot = Robot.new
      position = "X: 0, Y: 0, Direction: North"

      assert_equal position, robot.to_s
    end
  end

  describe "#left" do
    it "rotates to the left" do
      robot = Robot.new
      robot.left

      assert_equal :west, robot.direction
    end
  end

  describe "#right" do
    it "rotates to the right" do
      robot = Robot.new
      robot.right

      assert_equal :east, robot.direction
    end
  end
end
