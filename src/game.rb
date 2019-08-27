class Game
  def initialize(instructions)
    table = Table.new(5,5)
    robot = Robot.new(table)
  end

  def start_game
    File.open(instructions).ech do |line|
      puts line
    end

  end
end

