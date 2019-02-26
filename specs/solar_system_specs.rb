gem "minitest", ">= 5.0.0"
require "minitest/pride"
require "minitest/autorun"
require_relative "../lib/planet.rb"

# mini-tests for planet
describe "Planet test" do
  it "throw error if mass is negative" do
    # arrange
    mass = -10
    distance = 1.0
    # act

    # assert
    expect { Planet.new("h", "h", mass, distance, "h") }.must_raise ArgumentError
  end
end
