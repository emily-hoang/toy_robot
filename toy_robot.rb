require './game'
require './robot'
require './table'

if ARGV.length > 0
  instructions = ARGV[0]

  if File.exist?(instructions)
    Game.new(instructions)
  else
    puts "The instruction file doesn't exist"
  end
else
  puts "Usage: ruby toy_robot.rb instruction_file.txt"
end

