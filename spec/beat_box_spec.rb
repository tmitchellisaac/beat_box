require "./lib/beat_box"
require "./lib/list"
require "./lib/node"

require "pry"

RSpec.describe BeatBox do
  it "is an instance of BeatBox" do
    beat_box_1 = BeatBox.new
    expect(beat_box_1).to be_instance_of BeatBox
  end

  it "has a list attribute" do
    beat_box_1 = BeatBox.new
    expect(beat_box_1.list).to be_a LinkedList
  end

  it "the BeatBox has a list with a head attribute" do
    beat_box_1 = BeatBox.new
    expect(beat_box_1.list.head).to eq nil
  end

  it "has a beatbox append method" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    expect(beat_box_1.list.head.data).to eq("beep")
  end

  it "has correct next_node value" do 
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    expect(beat_box_1.list.head.next_node.data).to eq("boop")
  end

  it "has a count method for BeatBox class" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    expect(beat_box_1.count).to eq (6)
  end
end