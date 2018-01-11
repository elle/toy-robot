require_relative "test_helper"

describe Robot do
  it "is initialised with a position" do
    position = Position.new
    robot = Robot.new(position)

    assert_equal position, robot.position
  end

  describe "#report" do
    it "reports its position" do
      position = Position.new(x: 2, y: 2,f: :south)
      robot = Robot.new(position)

      assert_equal [2,2,:south], robot.report
    end
  end
end
