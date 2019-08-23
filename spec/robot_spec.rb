require_relative '../src/robot.rb'
require_relative '../src/table.rb'

RSpec.describe "Robot" do
  let(:robot) { Robot.new(table) }
  let(:table) { Table.new(5, 5) }

  it "will be a robot" do
    expect(robot).to be_a(Robot)
  end

  describe "#place" do
    let(:place) { robot.place(x, y, facing) }
    let(:x) { 0 }
    let(:y) { 0 }
    let(:facing) { 'NORTH' }

    context "when a placement is valid" do
      it "will return true" do
        expect(place).to eq(true)
      end
    end

    context 'when a placement is invalid' do
      context 'when it is off the board' do
        let(:x) { 6 }
        it "will return false" do
          expect(place).to eq(false)
        end

        let(:x) { -1 }
        it "will return false" do
          expect(place).to eq(false)
        end
      end

      context 'when the argument is invalid' do
        let(:facing) { "north" }
        it "will return false" do
          expect(place).to eq(false)
        end
      end
    end
  end
end