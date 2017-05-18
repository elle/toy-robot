class Move
  attr_reader :robot

  def initialize(robot: robot)
    @robot = robot
  end

  def go
    self.send "go_#{direction}"
  end

  private

  def direction
    robot.direction
  end

  def go_north
    robot.y = robot.y + 1
  end

  def go_east
    robot.x = robot.x + 1
  end

  def go_south
    robot.y = robot.y - 1
  end

  def go_west
    robot.x = robot.x - 1
  end
end


