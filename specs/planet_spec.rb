gem "minitest", ">= 5.0.0"
require "minitest/pride"
require "minitest/autorun"
require_relative "../lib/planet"

describe "Planet" do
  let (:earth) {
    Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  }

  it "is an instance of Planet" do
    expect(earth).must_be_instance_of Planet
  end

  it "has a name" do
    expect(earth.name).must_equal "Earth"
  end

  it "has a color" do
    expect(earth.color).must_equal "blue-green"
  end

  it "has a mass" do
    expect(earth.mass_kg).must_be_close_to 5.972e24, 0.01
  end
end
