require "minitest/autorun"
require "minitest/reporters"
require_relative "solar_system.rb"

Minitest::Reporters.use!

describe "planet" do
  it "adds planets" do
    solar_system = SolarSystem.new("Sol")
    mercury = Planet.new("Mercury", "dark-gray", 3.285e23, 57.91e8, "The smallest planet in our solar system.")
    solar_system.add_planet(mercury)
    result = solar_system.planets[-1]
    expect(result).must_equal mercury
  end

  it "returns distance between planets greater than zero (utilizes find_planet_by_name)" do
    solar_system = SolarSystem.new("Sol")
    mercury = Planet.new("Mercury", "dark-gray", 3.285e23, 57.91e8, "The smallest planet in our solar system.")
    solar_system.add_planet(mercury)
    venus = Planet.new("Venus", "reddish-brown", 4.867e24, 67.24e8, "One day in Venus lasts 243 Earth days.")
    solar_system.add_planet(venus)
    result = solar_system.distance_between("mercury", "venus")
    expect(result).must_be :>, 0
  end
end