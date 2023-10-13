
require "./lib/node"
require "./lib/list"

require "pry"

RSpec.describe LinkedList do
  it "exists" do
  list_1 = LinkedList.new
  expect(list_1).to be_a LinkedList
  end

end
