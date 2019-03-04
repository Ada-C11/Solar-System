gem "minitest", ">= 5.0.0"
require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/planet"

describe "Planets tests" do
  it "Tests mass is greater than zero" do
    mercury = Planet.new("Mercury", "grey", 0.33e24, 57.9e6, "it has ice in craters that never receive sunlight.")
    expect(mercury.mass_kg).must_be :>, 0
  end

  it "Tests distance is greater than zero" do
    mercury = Planet.new("Mercury", "grey", 0.33e24, 57.9e6, "it has ice in craters that never receive sunlight.")
    expect(mercury.distance_from_sun_km).must_be :>, 0
  end

  it "Test planet variable assignment and summary" do
    mercury = Planet.new("Mercury", "grey", 0.33e24, 57.9e6, "it has ice in craters that never receive sunlight.")
    expect(mercury.summary).must_equal "Mercury is a grey planet that weighs 3.3e+23 kilograms and orbits 57900000.0 kilometers from the sun.  A cool fact about Mercury is that it has ice in craters that never receive sunlight."
  end
end
