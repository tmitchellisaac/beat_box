require './spec/spec_helper'
require './lib/node'
require './lib/list'

require "pry"


class LinkedList
  attr_reader :head,

  def initialize
    @head = nil
  end

  def append(data_input)
    if @head == nil
      @head = Node.new(data_input)
      
    else
      current_node = @head
      until(current_node.next_node.nil?)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data_input)
    end
  end
  
   def count
    number_of_nodes = 0
    if @head == nil
     number_of_nodes
    else
    current_node = @head
    number_of_nodes = 1
      until(current_node.next_node.nil?)
        current_node = current_node.next_node
        number_of_nodes += 1
      end
      number_of_nodes
    end
  end

  # def to_string
  #   last_node = @head
  #   while(!last_node.next_node.data.nil?)
  #       last_node = last_node.next_node
  #       p last_node.data
  #   end
        

  #   # if @head.next_node == nil
  #   #   p @head.data
  #   # else
  #   #   while(!next_node.nil?)
  #   #   p @head.next_node.data
  #   #   end
  #   # end
  # end



end