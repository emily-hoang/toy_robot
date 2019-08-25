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
    end
  end

  describe "#left" do
    before { robot.place(0,0,facing)  }

    context "when the robot is facing north" do
      let(:facing) { 'NORTH' }

      it "will turn to face the west" do
        expect(robot.left).to eq("WEST")
      end
    end

    context "when the robot is facing south" do
      let(:facing) { 'SOUTH' }

      it "will turn to face the east" do
        expect(robot.left).to eq("EAST")
      end
    end

    context "when the robot is facing west" do
      let(:facing) { 'WEST' }

      it "will turn to face the south" do
        expect(robot.left).to eq("SOUTH")
      end
    end

    context "when the robot is facing east" do
      let(:facing) { 'EAST' }

      it "will turn to face the north" do
        expect(robot.left).to eq("NORTH")
      end
    end
  end

  describe "#right" do
    before { robot.place(0, 0, facing) }

    context "when the robot is facing north" do
      let(:facing) { "NORTH" }

      it "will turn to face the east" do
        expect(robot.right).to eq("EAST")
      end
    end

    context "when the robot is facing south" do
      let (:facing) { "SOUTH" }

      it "will turn to face west" do
        expect(robot.right).to eq("WEST")
      end
    end

    context "when the robot is facing west" do
      let(:facing) { "WEST" }

      it "will turn to face the north" do
        expect(robot.right).to eq("NORTH")
      end
    end

    context "when the robot is facing east" do
      let(:facing) { "EAST" }

      it "will turn to face the south" do
        expect(robot.right).to eq("SOUTH")
      end
    end
  end

  describe "#move" do
    before { robot.place(2, 2, facing)}

    context "when the robot is facing north" do
      let(:facing) { "NORTH" }

      it "will move the robot 1 unit forward north" do
        expect(robot.move).to eq(3)
      end
    end

    context "when the robot is facing south" do
      let(:facing) { "SOUTH" }

      it "will move the robot 1 unit forward south" do
        expect(robot.move).to eq(3)
      end
    end

    context "when the robot is facing west" do
      let(:facing) { "WEST" }

      it "will move the robot 1 unit forward west" do
        expect(robot.move).to eq(3)
      end
    end

    context "when the robot is facing east" do
      let(:facing) { "EAST" }

      it "will move the robot 1 unit forward east" do
        expect(robot.move).to eq(3)
      end
    end
  end
end