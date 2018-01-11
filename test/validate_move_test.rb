require_relative "test_helper"

describe ValidateMove do
  context "when valid move" do
    it "retuns true" do
      position = Position.new(x: 0, y: 0, f: :north)

      result = ValidateMove.new(position: position).call

      assert result
    end

    it "does not move the robot" do
      position = Position.new(x: 0, y: 0, f: :north)

      ValidateMove.new(position: position).call

      assert_equal [0,0,:north], position.to_s
    end
  end

  context "when facing the edge of board" do
    it "returns false" do
      position = Position.new(x: 0, y: 0, f: :south)

      result = ValidateMove.new(position: position).call

      refute result
    end
  end
end
