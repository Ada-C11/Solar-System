require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require_relative "../lib/planet.rb"

describe "Instantiates a planet correctly" do
  it "creates a planet object" do
    planet = Planet.new
    expect(planet.class).must_equal Planet
  end
end

describe "error handling" do
  it "gives an error for mass <= 0" do
    expect { planet = Planet.new(mass_kg: 0) }.must_raise ArgumentError
  end

  it "gives an error for distance <= 0" do
    expect { planet = Planet.new(distance_from_sun_km: -34) }.must_raise ArgumentError
  end
end
