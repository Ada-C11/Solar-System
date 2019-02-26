# planets_spec.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/planets.rb'
require_relative '../lib/solar_system.rb'

Minitest::Reporters.use!

# describing what tests I'll run for the planet class
describe "Planet Class" do 
  it "will raise ArgumentError if mass or distance from sun are < 0" do
   
  expect { 
    Planet.new('Mars', 'red', -1, 400, 'named after the god of war')
  }.must_raise ArgumentError

  expect {
    Planet.new('Mars', 'red', 20, -1, 'named after the god of war')
  }.must_raise ArgumentError

end
end

# describing the tests I'll run for the solarsystem class

describe "SolarSystem Class" do 

  it "will raise ArgumentError if there is no planet of a given name in the solar system" do
    solar = SolarSystem.new('Fake')

    phalanx = Planet.new('Phalanx', 'orange', 20, 1, 'this is fake')
    solar.add_planet(phalanx)
    cheese = Planet.new("Cheese", 'yellow', 30, 21, 'this is also fake')
    solar.add_planet(cheese)

    expect {
      planets.each do |planet|
        if planet.name.include?("Garbledygook")
          return planet
        else
          raise ArgumentError
        end
      end
    }
  end

  it "will raise ArgumentError if planet already exists" do
    solar_system = SolarSystem.new("test")

    expect {
      venus = Planet.new('Venus', 'pink', 5.294e24, 2.493e6, 'home planet of the goddess of love')
      solar_system.add_planet(venus)

      venus2 = Planet.new('Venus', 'pink', 5.294e24, 2.493e6, 'home planet of the goddess of love')
      solar_system.add_planet(venus2)
    }.must_raise ArgumentError
  end


end
