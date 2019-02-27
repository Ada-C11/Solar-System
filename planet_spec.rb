require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet.rb'

Minitest::Reporters.use!

describe "class Planet" do
  it "will raise ArgumentError if mass is < 0" do
    expect {
      Planet.new("Earth", "blue-green", -10, 100000, "only planet known to support life")
    }.must_raise ArgumentError
  end

  it "will raise ArgumentError if distance from Sun is < 0" do
    expect {
      Planet.new("Earth", "blue-green", 1000000, 0, "only planet known to support life")
    }.must_raise ArgumentError
  end
end

describe "class solar system" do
  it "will raise ArgumentError if planet already exists" do
    # solar_system = SolarSystem.new("SailorMoon")

     expect {
      mars = Planet.new("Mars", "red", "6.39 × 10^23", "227.9 million", "It's our next destination")
      solar_system.add_planet(mars)

       another_mars = Planet.new("Mars", "red", "6.39 × 10^23", "227.9 million", "It's our next destination")
      solar_system.add_planet(another_mars)
    }.must_raise ArgumentError
  end
end