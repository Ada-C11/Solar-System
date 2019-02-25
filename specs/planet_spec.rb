require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/planet"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "planet" do
  it "takes 5 parameters and initializes an instance." do
    my_planet = Planet.new("Earth",
                           "blue",
                           5.972e24,
                           1.496e8,
                           "We live here! :)")

    expect(my_planet).must_be_instance_of Planet
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
