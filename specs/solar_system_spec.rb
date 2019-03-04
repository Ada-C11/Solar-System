gem "minitest", ">= 5.0.0"
require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

# require_relative "../lib/planet"
require_relative "../lib/solar_system"

describe "Solar system tests" do
  it "Tests planet finding" do
    solar_system = SolarSystem.new("Sol")
    @planets = ["earth", "mars"]
    expect(solar_system.find_planet_by_name("mars2")).must_match "Invalid planet."
  end
end
