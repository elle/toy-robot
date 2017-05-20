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

  describe "#place" do
    it "places a robot in a specific location" do
      robot = Robot.new
      robot.place(1,2,"south")

      assert_equal 1, robot.x
      assert_equal 2, robot.y
      assert_equal "south", robot.f
    end
  end

  describe "#move" do
    it "moves a robot to a location" do
      robot = Robot.new
      robot.move

      assert_equal 0, robot.x
      assert_equal 1, robot.y
      assert_equal "north", robot.f
    end

    it "moves east" do
      robot = Robot.new
      robot.place(0,0,"east")
      robot.move


      assert_equal 1, robot.x
      assert_equal 0, robot.y
      assert_equal "east", robot.f
    end

    it "moves south" do
      robot = Robot.new
      robot.place(1,1,"south")
      robot.move


      assert_equal 1, robot.x
      assert_equal 0, robot.y
      assert_equal "south", robot.f
    end

    it "moves west" do
      robot = Robot.new
      robot.place(1,1,"west")
      robot.move


      assert_equal 0, robot.x
      assert_equal 1, robot.y
      assert_equal "west", robot.f
    end
  end
end
