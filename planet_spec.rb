require "minitest/autorun"
require "minitest/reporters"
require_relative 'planet.rb'

Minitest::Reporters.use!

describe "planet" do
  it "returns mass greater than zero" do
    mercury = Planet.new("Mercury", "dark-gray", 3.285e23, 57.91e8, "The smallest planet in our solar system")
    result = mercury.mass_kg
    expect(result).must_be :>, 0
  end

  it "returns distance from the sun greater than zero" do
    mercury = Planet.new("Mercury", "dark-gray", 3.285e23, 57.91e8, "The smallest planet in our solar system")
    result = mercury.distance_from_sun_km
    expect(result).must_be :>, 0
  end
end