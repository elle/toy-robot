class Robot
  attr_accessor :position

  def initialize(position: Position.new)
    @position = position
  end

  def to_s
    "X: #{x}, Y: #{y}, Direction: #{direction.capitalize}"
  end

  private

  def method_missing(method, *args)
    begin
      position.send(method, *args)
    rescue
      super
    end
  end
end
