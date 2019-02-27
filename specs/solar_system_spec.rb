require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require_relative "../lib/solar_system"

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "solar_system" do
  describe "initialize method" do
    new_sol = SolarSystem.new("New Sol")
    it "will create an instance of the class SolarSystem with an empty array planets " do
      expect(new_sol).must_be_instance_of SolarSystem
      expect(new_sol.planets).must_equal []
    end

    it "will read the star name when initialized" do
      expect(new_sol.star_name).must_equal "New Sol"
    end
  end

  describe "add_planet method" do
    new_sol = SolarSystem.new("New Sol")
    it "will add a planet and return an array of planets" do
      pluto = Planet.new("Pluto", "pink", 56, 87, "pet-friendly")
      expect(new_sol.add_planet(pluto)).must_be_instance_of Array
    end
  end

  describe "list_planets method" do
    new_sol = SolarSystem.new("New Sol")
    pluto = Planet.new("Pluto", "pink", 56, 87, "pet-friendly")
    new_sol.add_planet(pluto)
    it "will return true if the list is an instance of a string" do
      expect(new_sol.list_planets).must_be_instance_of String
    end
  end

  describe "find_planet_by_name method" do
    new_sol = SolarSystem.new("New Sol")
    pluto = Planet.new("Pluto", "pink", 56, 87, "pet-friendly")
    new_sol.add_planet(pluto)
    it "will return an instance of Planet" do
      expect(new_sol.find_planet_by_name("Pluto")).must_be_instance_of Planet
    end
  end

  # describe "distance_between method" do
  #   it "will return the distance between two planets" do
  #     new_sol = SolarSystem.new("New_Sol")
  #     pluto = Planet.new("Pluto", "pink", 56, 87, "pet-friendly")
  #     puffer = Planet.new("Puffer", "yellow", 78, 89, "not a planet")
  #     new_sol.add_planet(pluto)
  #     new_sol.add_planet(puffer)
  #     puts new_sol.distance_between(pluto, puffer)
  #     expect(new_sol.distance_between(pluto, puffer)).must_equal 2
  #   end
  # end
end
