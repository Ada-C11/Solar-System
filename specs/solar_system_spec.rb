gem "minitest", ">= 5.0.0"
require "minitest/pride"
require "minitest/autorun"
require_relative "../lib/solar_system"
require_relative "../lib/planet"

describe "SolarSystem" do
  let (:sol_system) {
    SolarSystem.new("sol")
  }
  it "is an instance of SolarSystem" do
    expect(sol_system).must_be_instance_of SolarSystem
  end

  it "has a name" do
    expect(sol_system.name).must_equal "Sol"
  end

  describe "SolarSystem#add_planet" do
    let(:earth) {
      Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
    }
    let(:mars) {
      Planet.new("mars", "red", 5.9234, 1.2348, "Only planet thats red and dusty")
    }
    before do
      planets_test = [earth, mars]
      planets_test.each do |planet|
        sol_system.add_planet(planet)
      end
    end

    it "has a planet instance added to planets" do
      expect(sol_system.planets).must_include earth
    end

    describe "SolarSystem#list_planets" do
      it "returns a string" do
        expect(sol_system.list_planets).must_be_instance_of String
      end

      it "returns formatted list of sol_system" do
        expect(sol_system.list_planets).must_equal "Planets orbiting Sol\n1. Earth\n2. Mars"
      end
    end
  end
end
