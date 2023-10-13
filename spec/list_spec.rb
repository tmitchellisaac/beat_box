require './spec/spec_helper'

require './lib/node'
require './lib/list'

require "pry"

RSpec.describe LinkedList do
  it "exists" do
  list_1 = LinkedList.new
  expect(list_1).to be_a LinkedList
  end

  it "has a head" do
    list_1 = LinkedList.new
    expect(list_1.head).to eq nil
  end

  it "has a method to add next node" do
    list_1 = LinkedList.new
    list_1.append("doop")
    expect(list_1.head.data).to eq ("doop")
  end

  it "has a next node value of nil" do
    list_1 = LinkedList.new
    list_1.append("doop")
    expect(list_1.head.next_node).to eq nil
  end

  it "has a counter that counts 0" do
    list_1 = LinkedList.new
    expect(list_1.count).to eq (0)
  end

  it "has a counter that counts to 1" do
    list_1 = LinkedList.new
    list_1.append("doop")
    expect(list_1.count).to eq (1)
  end

  it "has a counter that counts to 2" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    expect(list_1.count).to eq (2)
  end

  it "has a counter that counts to 3" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.append("boop")
    expect(list_1.count).to eq (3)
  end


  # it "has a string method to print data from every node" do
  #   list_1 = LinkedList.new
  #   list_1.append("doop")
  #   expect(list_1.to_string).to eq("doop")
  # end
end
