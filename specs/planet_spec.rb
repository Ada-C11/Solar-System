require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require_relative "../lib/planet.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do
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

