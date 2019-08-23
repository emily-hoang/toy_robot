require './game'
require './robot'
require './table'

if ARGV.length > 0
  instruction_file = ARGV[0]

  if File.exist?(instruction_file)
    Game.new(instruction_file)
  else
    puts "The instruction file doesn't exist"
  end
else
  puts "Usage: ruby toy_robot.rb instruction_file.txt"
end

