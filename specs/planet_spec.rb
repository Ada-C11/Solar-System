require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require_relative "../lib/planet.rb"
require_relative "../lib/solar_system.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet class" do
    it "outputs a string when you invoke its summary method" do
        mars = Planet.new('Mars', 'red', 6.4171e23, 2.29e8, 'Mars has two moons called Phobos and Deimos')

        expect(mars.summary).must_be_instance_of String
    end

    it "raises argument error if you input a negative number for the planet's mass" do
        expect {
            Planet.new('Mars', 'red', -1, 2.29e8, 'Mars has two moons called Phobos and Deimos')
            }.must_raise ArgumentError
    end

    it "raises argument error if you input 0 for the planet's mass" do
        expect {
            Planet.new('Mars', 'red', 0, 2.29e8, 'Mars has two moons called Phobos and Deimos')
        }.must_raise ArgumentError
    end

    it "raises argument error if you input a negative number for the planet's distance from the Sun" do
        expect {
            Planet.new('Mars', 'red', 6.4171e23, -2, 'Mars has two moons called Phobos and Deimos')
            }.must_raise ArgumentError
    end

    it "raises argument error if you input 0 for the planet's distance from the Sun" do
        expect {
            Planet.new('Mars', 'red', 6.4171e23, 0, 'Mars has two moons called Phobos and Deimos')
            }.must_raise ArgumentError
    end
end

describe "solar_system class" do
    it "returns a list of type String of planets orbitting the star" do
        
        earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
        mars = Planet.new('Mars', 'red', 6.4171e23, 2.29e8, 'Mars has two moons called Phobos and Deimos')
        sun = SolarSystem.new("Sun")
        sun.add_planet(earth)
        sun.add_planet(mars)

        expect(sun.list_planets).must_be_instance_of String
    end


end

