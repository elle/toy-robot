require_relative "test_helper"

describe Move do
  describe "#go" do
    it "moves north" do
      position = Position.new(x: 0, y: 0, f: :north)

      result_position = Move.new(position: position).go

      assert_equal 0, result_position.x
      assert_equal 1, result_position.y
    end

    it "moves east" do
      position = Position.new(x: 0, y: 0, f: :east)

      result_position = Move.new(position: position).go

      assert_equal 1, result_position.x
      assert_equal 0, result_position.y
    end

    it "moves south" do
      position = Position.new(x: 0, y: 1, f: :south)

      result_position = Move.new(position: position).go

      assert_equal 0, result_position.x
      assert_equal 0, result_position.y
    end

    it "moves west" do
      position = Position.new(x: 1, y: 1, f: :west)

      result_position = Move.new(position: position).go

      assert_equal 0, result_position.x
      assert_equal 1, result_position.y
    end
  end
end
