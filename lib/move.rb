# Y
# ^
# |
# * -- > X

class Move
  attr_reader :robot, :board, :position

  def initialize(robot: Robot.new, board: Board.new)
    @robot = robot
    @board = board
    @position = robot.position
  end

  def go
    self.send :"go_#{position.f}"

    if !position_valid?
      robot.place(
        @original_position.x,
        @original_position.y,
        @original_position.f
      )
    end
  end

  private
  def original_position
    @original_position = Position.new(
      robot.x,
      robot.y,
      robot.f
    )
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

  def position_valid?
    (0..board.height).include? position.y
    # (0..board.width).include? position.x
  end
end
