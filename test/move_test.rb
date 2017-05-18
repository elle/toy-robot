require "test_helper"

describe Move do
  describe "#go" do
    it "moves north" do
      robot = Robot.new(x: 0, y: 0, direction: :north)

      Move.new(robot: robot).go

      assert 1, robot.y
      assert 0, robot.x
    end

    it "moves east" do
      robot = Robot.new(x: 0, y: 0, direction: :east)

      Move.new(robot: robot).go

      assert 1, robot.x
      assert 0, robot.x
    end

    it "moves south" do
      robot = Robot.new(x: 0, y: 1, direction: :south)

      Move.new(robot: robot).go

      assert 0, robot.y
      assert 0, robot.x
    end

    it "moves west" do
      robot = Robot.new(x: 1, y: 1, direction: :west)

      Move.new(robot: robot).go

      assert 1, robot.y
      assert 0, robot.x
    end
  end
end
