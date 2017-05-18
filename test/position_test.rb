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
end
