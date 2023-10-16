require "./lib/beat_box"
require "./lib/list"
require "./lib/node"

require "pry"

RSpec.describe BeatBox do
  it "is an instance of BeatBox" do
    beat_box_1 = BeatBox.new
    expect(beat_box_1).to be_instance_of BeatBox
  end

  it "can take arguments" do
    beat_box_1 = BeatBox.new("doop suu doop tee")
    expect(beat_box_1.all).to eq("doop suu doop tee")
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

  it "has a play method" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.play
  end

  it "has a validation system through append" do
  beat_box_1 = BeatBox.new
  beat_box_1.append("beep boop ploop")
  beat_box_1.append("beep boop Mississippi")
  expect(beat_box_1.list.to_string).to eq("beep boop ploop beep boop")
  end

  it "has a beatbox append method" do
    beat_box_1 = BeatBox.new
    beat_box_1.prependdd("beep boop ploop")
    expect(beat_box_1.all).to eq("ploop boop beep")
  end


  it "has an all method" do 
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.prependdd("dee tee")
    expect(beat_box_1.all).to eq("tee dee beep boop ploop beep boop ploop")
  end

  it "has a rate method that changes the rate of play" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.play
    expect(beat_box_1.rate).to eq 500
    beat_box_1.rate = 100
    expect(beat_box_1.rate).to eq 100
    beat_box_1.play
  end

  it "has a voice method that changes the voice output" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.play
    expect(beat_box_1.voice).to eq ("Boing")
    beat_box_1.voice = ("Ralph")
    expect(beat_box_1.voice).to eq ("Ralph")
    beat_box_1.play
  end

  it "has a reset_rate method" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.play
    expect(beat_box_1.rate).to eq 500
    beat_box_1.rate = 100
    expect(beat_box_1.rate).to eq 100
    beat_box_1.play
  end

  it "has a reset_voice method" do
    beat_box_1 = BeatBox.new
    beat_box_1.append("beep boop ploop")
    beat_box_1.append("beep boop ploop")
    beat_box_1.voice = ("Ralph")
    expect(beat_box_1.voice).to eq ("Ralph")
    beat_box_1.reset_voice
    expect(beat_box_1.voice).to eq ("Boing")
  end


end
