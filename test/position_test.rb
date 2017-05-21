require_relative "test_helper"

describe Position do
  describe "#to_s" do
    it "returns coordinates and directions" do
      position = Position.new(0,0,"north")

      assert_equal "0,0,north", position.to_s
    end
  end
end
