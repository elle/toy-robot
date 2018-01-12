class Direction
  attr_reader :bearing

  def initialize(bearing:)
    @bearing = bearing.to_sym
  end

  def self.all
    [:north, :east, :south, :west].freeze
  end

  def valid?
    Direction.all.include? bearing
  end
end
