require_relative "test_helper"

describe Position do
  it "defaults to x at 0" do
    position = Position.new

    assert_equal 0, position.x
  end

  it "defaults to y at 0" do
    position = Position.new

    assert_equal 0, position.y
  end

  it "defaults to facing north" do
    position = Position.new

    assert_equal :north, position.f
  end

  describe "#to_s" do
    it "reports back the position" do
      position = Position.new(x: 1, y: 3,f: :west)

      assert_equal [1,3,:west], position.to_s
    end
  end
end
