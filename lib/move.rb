# Y
# ^
# |
# * -- > X

class Move
  attr_reader :robot, :board
  
  def initialize(robot: Robot.new, board: Board.new)
    @robot = robot
    @board = board
  end

  def go
    self.send :"go_#{robot.f}"
  end

  private

  def go_north
    robot.y += 1
  end

  def go_east
    robot.x += 1
  end

  def go_south
    robot.y -= 1
  end

  def go_west
    robot.x -= 1
  end
end
