class BeatBox
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data_input)
    separated_data_array = data_input.split(" ")
    separated_data_array.each do |individual_data|
      @list.append(individual_data)
    end
  end

  def count
    @list.count
  end


end