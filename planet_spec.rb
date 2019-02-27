require "minitest/autorun"
require "minitest/reporters"
require_relative "planet"

Minitest::Reporters.use!

describe "planet" do
  it "will return a string" do
    home_planet = earth.summary
    earth = Planet.new("Earth", "green", 100.25, 5000, "I live here!")

    expect(home_planet).must_be_instance_of String
  end
end
