class ValidMove
  class << self
    def verify(robot: Robot.new, board: Board.new)
      new(robot: robot, board: board).verify
    end
  end

  attr_reader :robot, :board

  def initialize(robot: Robot.new, board: Board.new)
    @robot, @board = robot, board
  end

  def verify
    (0...board.width).include?(new_position.x) &&
      (0...board.height).include?(new_position.y)
  end

  private

  def new_position
    Move.new(position: robot.position).go
  end
end
