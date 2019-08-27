require_relative '../src/game.rb'
require_relative '../instructions.txt'

RSpec.describe "Game" do
  let(:game) { Game.new(instruction_file) }
  let(:instruction_file) { instruction_file }
  let(:robot) { Robot.new(table) }
  let(:table) { Table.new(5, 5) }

  describe "#initialize" do
    it "will create a robot" do
    expect(game.initialize).to eq(Robot)
    end
  end
end