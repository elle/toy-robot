class Game
  attr_reader :board, :robot

  def initialize(robot: Robot.new, board: Board.new)
    @robot, @board = robot, board
  end

  def place(*args)
    position = Position.new(*args)
    @robot = Robot.new(position: position)
  end

  def left(*args)
    place(
      robot.position.x,
      robot.position.y,
      robot.position.left_direction
    )
  end

  def right(*args)
    place(
      robot.position.x,
      robot.position.y,
      robot.position.right_direction
    )
  end

  def report(*args)
    puts robot
    robot.to_s
  end

  def move(*args)
    if ValidMove.verify(robot: robot, board: board)
      new_position = Move.new(position: robot.position).go
      place(
        new_position.x,
        new_position.y,
        new_position.direction
      )
    end
  end
end
