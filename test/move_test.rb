require_relative "test_helper"

describe Move do
  describe "#go" do
    it "moves north" do
      position = Position.new(x: 0, y: 0, f: :north)

      Move.new(position: position).go

      assert 1, position.y
      assert 0, position.x
    end

    it "moves east" do
      position = Position.new(x: 0, y: 0, f: :east)

      Move.new(position: position).go

      assert 1, position.x
      assert 0, position.x
    end

    it "moves south" do
      position = Position.new(x: 0, y: 1, f: :south)

      Move.new(position: position).go

      assert 0, position.y
      assert 0, position.x
    end

    it "moves west" do
      position = Position.new(x: 1, y: 1, f: :west)

      Move.new(position: position).go

      assert 1, position.y
      assert 0, position.x
    end
  end
end
