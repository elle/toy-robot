require_relative "test_helper"

describe Direction do
  describe ".all" do
    it "returns 4 cardinal points" do
      assert_equal [:north, :east, :south, :west], Direction.all
    end
  end

  describe "#valid?" do
    it "returns true when bearing is in the all array" do
      assert Direction.new(bearing: "south").valid?
    end

    it "returns false when bearing is non-existent" do
      refute Direction.new(bearing: "nonexistent").valid?
    end
  end
end
