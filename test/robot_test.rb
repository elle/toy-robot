require_relative "test_helper"

describe Robot do
  context "has defaults" do
    it "has an x coordinate" do
      robot = Robot.new
      assert_equal 0, robot.x
    end

    it "has a y coordinate"  do
      robot = Robot.new
      assert_equal 0, robot.y
    end

    it "faces a direction"  do
      robot = Robot.new
      assert_equal "north", robot.f
    end
  end

  describe "#to_s" do
    it "returns position details" do
      robot = Robot.new

      assert_equal "0,0,north", robot.to_s
    end
  end

  describe "#place" do
    it "places a robot in a specific location" do
      robot = Robot.new
      robot.place(1,2,"south")

      assert_equal 1, robot.x
      assert_equal 2, robot.y
      assert_equal "south", robot.f
    end
  end
end
