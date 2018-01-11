class Robot
  attr_reader :position

  def initialize(position:)
    @position = position
  end

  def report
    position.to_s
  end
end
