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
    expect(sol_system.name).must_equal "sol"
  end

  describe "SolarSystem#add_planet" do
    it "has a plant instance added to planets" do
      earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
      sol_system.add_planet(earth)
      expect(sol_system.planets).must_include earth
    end
  end
end
