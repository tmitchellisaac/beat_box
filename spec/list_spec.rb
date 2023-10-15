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

  it "can count even after the prependd method is called" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    expect(list_1.count).to eq(4)
  end

  it "has a to_string method to print one data_input" do
    list_1 = LinkedList.new
    list_1.append("doop")
    expect(list_1.to_string).to eq ("doop")
  end


  it "has a string method to print data from every node" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.append("ploop")
    list_1.append("ploop")
    expect(list_1.to_string).to eq("doop ploop ploop ploop")
  end

  it "had a prepend method that puts a sound at the beginning/head" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    expect(list_1.to_string).to eq("suu doop ploop")
  end

  it "can add another element to the beginning" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")

    expect(list_1.to_string).to eq("woop suu doop ploop")
  end

  it "has an insert method" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    list_1.insert(0, "foop")
    expect(list_1.to_string).to eq("foop woop suu doop ploop")
    list_1.insert(1, "schwoop")
    expect(list_1.to_string).to eq("foop schwoop woop suu doop ploop")
    list_1.insert(2, "nana")
    expect(list_1.to_string).to eq("foop schwoop nana woop suu doop ploop")
  end

   it "has an insert method that inserts at the 1 index position" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    list_1.insert(1, "schwoop")
    expect(list_1.to_string).to eq("woop schwoop suu doop ploop")
   end

   it "has an insert method that inserts at the 1 index position" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    list_1.insert(2, "schwoop")
    expect(list_1.to_string).to eq("woop suu schwoop doop ploop")
   end

   it "has an insert method that inserts at the 1 index position" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    list_1.insert(3, "schwoop")
    expect(list_1.to_string).to eq("woop suu doop schwoop ploop")
   end

   it "has a find method" do
    list_1 = LinkedList.new
    list_1.append("doop")
    list_1.append("ploop")
    list_1.prependd("suu")
    list_1.prependd("woop")
    list_1.insert(3, "schwoop")
    expect(list_1.find(1,2)).to eq("suu doop")
   end
end
