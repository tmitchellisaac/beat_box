require './spec/spec_helper'
require './lib/node'
require './lib/list'

require "pry"


class LinkedList
  attr_reader :head

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

def insert(insert_position,data_input)
  if @head == nil
      @head = Node.new(data_input)
  elsif insert_position == 0 
    inserted_node = Node.new(data_input)
    inserted_node.next_node = @head
    @head = inserted_node
  else
    current_node = @head
    pos = 1
    until(pos == insert_position)
      pos += 1
      current_node = current_node.next_node
    end
      inserted_node = Node.new(data_input)
      inserted_node.next_node = current_node.next_node
      current_node.next_node = inserted_node
  end
end

  def prependd(data_input)
    first_node = Node.new(data_input)
    first_node.next_node = @head
    @head = first_node
  end



  def to_string
    all_node_data = ""
    current_node = @head
    until(current_node.next_node.nil?)
     all_node_data << " #{current_node.data}"
     current_node = current_node.next_node
    end
    all_node_data << " #{current_node.data}"
    all_node_data.lstrip
  end
end