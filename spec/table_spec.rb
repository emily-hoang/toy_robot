require './table.rb'

RSpec.describe 'Table' do
  let(:table) { Table.new(5,5) }

  it 'will be a table' do
    expect(table).to be_a(Table)
  end

  it 'create a board with a length & width' do
    expect(table.length).to eq(5)
    expect(table.width).to eq(5)
  end
end