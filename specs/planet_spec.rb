
require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require_relative "../lib/planet"

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "planet" do
  describe "initialize" do
    it "will create an instance of the class Planet with 5 parameters" do
      new_planet = Planet.new("earth", "blue", 45, 67, "supports life")
      expect(new_planet).must_be_instance_of Planet
    end

    it "will correctly read the parameters of the planet" do
      new_planet = Planet.new("earth", "blue", 45, 67, "supports life")
      expect(new_planet.name).must_equal "earth"
      expect(new_planet.color).must_equal "blue"
      expect(new_planet.mass_kg).must_equal 45
      expect(new_planet.distance_from_sun_km).must_equal 67
      expect(new_planet.fun_fact).must_equal "supports life"
    end

    describe "summary" do
      it "will return a summary of the planet" do
        new_planet = Planet.new("earth", "blue", 45, 67, "supports life")
        expect(new_planet.summary).must_be_instance_of String
      end
    end
  end
end
