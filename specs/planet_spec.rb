require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/planet"

describe "Planet" do
  it "will raise error if mass_kg is 0 or less" do
    expect {
      earth = Planet.new("Earth", "blue-green", 0, 1.496e8, "Only planet known to support life")
    }.must_raise ArgumentError

    expect {
      earth = Planet.new("Earth", "blue-green", -2e8, 1.496e8, "Only planet known to support life")
    }.must_raise ArgumentError
  end

  it "will raise error if distance_from_sun_km is 0 or less" do
    expect {
      earth = Planet.new("Earth", "blue-green", 5.972e24, 0, "Only planet known to support life")
    }.must_raise ArgumentError

    expect {
      earth = Planet.new("Earth", "blue-green", 5.972e24, -1.496e8, "Only planet known to support life")
    }.must_raise ArgumentError
  end
end
