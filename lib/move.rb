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
    if valid_move?
      self.send :"go_#{robot.f}"
    end
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

  def valid_move?
    # new_position = (3,3) 
    #   (0..board.height).include? new_position.y &&
    #   (0..board.width).include? new_position.x
  end

end
