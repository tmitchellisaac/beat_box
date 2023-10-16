require './spec/spec_helper'
require "pry"

RSpec.describe do
  it "exists" do
  node = Node.new("plop")
  expect(node).to be_a Node 
  end

  it "has a data argument" do
    node = Node.new("plop") 
    expect(node.data).to eq("plop")
  end

  it "can have a different data string" do
    node = Node.new("doop") 
    expect(node.data).to eq("doop")
  end

  it "can have an integer data" do
    node = Node.new(7) 
    expect(node.data).to eq(7)
  end

  it "has a next_node" do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
  end

end
