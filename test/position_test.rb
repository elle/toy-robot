require "test_helper"

describe Position do
  it "has x and y coordinates" do
    position = Position.new

    assert_equal 0, position.x
    assert_equal 0, position.y
  end

  it "has direction" do
    position = Position.new

    assert_equal :north, position.direction
  end

  describe "#left" do
    it "rotates to the left" do
      position = Position.new
      position.left

      assert_equal :west, position.direction
    end
  end

  describe "#right" do
    it "rotates to the right" do
      position = Position.new
      position.right

      assert_equal :east, position.direction
    end
  end
end
