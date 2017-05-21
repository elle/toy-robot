# Y
# ^
# |
# * -- > X

class Move
  attr_reader :robot, :board, :position

  def initialize(robot: Robot.new, board: Board.new)
    @robot = robot
    @board = board
    @position = Position.new(robot.x, robot.y, robot.f)
  end

  def go
    move_to_new_position

    if new_position_valid?
      robot.place(position.x, position.y, position.f)
    end
  end

  private

  def move_to_new_position
    self.send :"go_#{position.f}"
  end

  def go_north
    position.y += 1
  end

  def go_east
    position.x += 1
  end

  def go_south
    position.y -= 1
  end

  def go_west
    position.x -= 1
  end

  def new_position_valid?
    (0..board.height).include?(position.y) &&
      (0..board.width).include?(position.x)
  end
end
