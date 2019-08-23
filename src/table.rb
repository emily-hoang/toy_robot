class Table
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end
end

table = Table.new(5, 5)