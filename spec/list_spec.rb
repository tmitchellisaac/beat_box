
require "./lib/node"
require "./lib/list"

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

  it "has a counter" do
    list_1 = LinkedList.new
    list_1.append("doop")
    expect(list_1.count).to eq (1)
  end


end
