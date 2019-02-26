require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "../lib/planet"

describe "planet" do
  it "takes 5 parameters and initializes an instance of Planet." do
    my_planet = Planet.new("Earth",
                           "blue",
                           5.972e24,
                           1.496e8,
                           "We live here! :)")

    expect(my_planet).must_be_instance_of Planet
  end
  it "correctly assigns attributes that can be accessed outside of class Planet" do
    my_planet = Planet.new("Earth",
                           "blue",
                           5.972e24,
                           1.496e8,
                           "We live here! :)")

    expect(my_planet.name).must_equal "Earth"
    expect(my_planet.color).must_equal "blue"
    expect(my_planet.mass_kg).must_be_close_to 5.972e24
    expect(my_planet.distance_from_sun).must_be_close_to 1.496e8
    expect(my_planet.fun_fact).must_equal "We live here! :)"
  end

  it "raises an argument error if mass or distance is not greater than zero" do
    expect {
      Planet.new("Sun",
                 "white",
                 1.989e30,
                 0,
                 "AAAAAAHHHH IT BURNS")
    }.must_raise ArgumentError
    expect {
      Planet.new("Black Hole",
                 "white",
                 -1.989e30,
                 5.537e70,
                 "Prepare to be spaghettified")
    }.must_raise ArgumentError
  end
end
