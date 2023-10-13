require "pry"

class LinkedList
  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data_input)
    if @head == nil
      @head = Node.new(data_input)
      
    else
      last_node = @head
      while(!last_node.next_node.nil?)
        last_node = last_node.next_node
      end
      last_node = Node.new(data_input)
    end

    @count += 1
   
  end


end