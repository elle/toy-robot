require_relative "test_helper"

describe Position do
  describe "DIRECTIONS" do
    it "has 4 cardinal points" do
      assert_equal [:north, :east, :south, :west], Position::DIRECTIONS
    end
  end

  context "#to_s" do
    it "returns a hash of attributes" do
      arr = [ 0, 0, :north ]

      assert_equal arr, Position.new.to_s
    end
  end

  context "Coordinates" do
    it "has defaults of south west corner" do
      position = Position.new

      assert_equal 0, position.x
      assert_equal 0, position.y
    end
  end

  context "#direction" do
    it "defaults to :north" do
      position = Position.new

      assert_equal :north, position.direction
    end

    it "sets a direction" do
      position = Position.new(0, 0, :west)

      assert_equal :west, position.direction
    end
  end

  context "valdiations" do
    it "cannot have negative coordinates" do
      assert_raises "Invalid!" do
        Position.new(-1, 0, :north)
      end
    end

    it "raises an error when direction does not exist" do
      assert_raises "Invalid!" do
        Position.new(0, 0, :nodirection)
      end
    end
  end

  describe "#left_direction" do
    it "finds the direction to its left" do
      position = Position.new

      assert_equal :west, position.left_direction
    end
  end

  describe "#right_direction" do
    it "finds its direction to its right" do
      position = Position.new

      assert_equal :east, position.right_direction
    end
  end
end
