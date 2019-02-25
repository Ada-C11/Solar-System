gem "minitest", ">= 5.0.0"
require "minitest/pride"
require "minitest/autorun"
require_relative "../lib/solar_system"

describe "SolarSystem" do
  let (:test_system) {
    SolarSystem.new("sol")
  }
  it "is an instance of SolarSystem" do
    expect(:test_system).must_be_instance_of SolarSystem
  end

  it "has a name" do
    expect(:test_system.name).must_equal "sol"
  end

  it "has planets" do
    # expect(:test_system.planets)
  end
end
