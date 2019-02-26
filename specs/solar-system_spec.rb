require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "../lib/solar-system"

describe "solar_system" do
  it "takes one parameter and initializes an instance of SolarSystem" do
    my_solar_system = SolarSystem.new("Proxima Centauri")
    expect(my_solar_system).must_be_instance_of SolarSystem
  end
  it "initializes star_name and planets attributes which can be accessed outside of class" do
    my_solar_system = SolarSystem.new("Proxima Centauri")
    expect(my_solar_system.star_name).must_equal "Proxima Centauri"
    expect(my_solar_system.planets).must_equal []
  end
  it "can add a planet to the solar system" do
    my_solar_system = SolarSystem.new("Sun")
    my_planet = Planet.new("Earth",
                           "blue",
                           5.972e24,
                           1.496e8,
                           "We live here! :)")
    my_solar_system.add_planet(my_planet)
    expect(my_solar_system.planets[0]).must_equal my_planet
  end
  it "raises an error if you add something that isn't a planet" do
    my_solar_system = SolarSystem.new("Sun")
    my_planet = "Earth"
    expect { my_solar_system.add_planet(my_planet) }.must_raise ArgumentError
  end
  it "returns a string when list_planets is called" do
    my_solar_system = SolarSystem.new("Sun")
    my_planet = Planet.new("Earth",
                           "blue",
                           5.972e24,
                           1.496e8,
                           "We live here! :)")
    my_solar_system.add_planet(my_planet)
    expect(my_solar_system.list_planets).must_be_instance_of String
  end
  it "finds a planet by name or returns nil if planet doesn't exist" do
    my_solar_system = SolarSystem.new("Sun")

    mars = Planet.new("Mars",
                      "red",
                      6.39e23,
                      2.279e8,
                      "Opportunity explored the surface of Mars for 14 years!")

    my_solar_system.add_planet(mars)

    expect(my_solar_system.find_planet_by_name("mars")).must_equal mars
    expect(my_solar_system.find_planet_by_name("MARS")).must_equal mars
    expect(my_solar_system.find_planet_by_name("pluto")).must_equal nil
  end

  it "returns the distance between two planets if both are in the solar system (else returns nil)" do
    my_solar_system = SolarSystem.new("Sun")
    earth = Planet.new("Earth",
                       "blue",
                       5.972e24,
                       1.496e8,
                       "We live here! :)")
    my_solar_system.add_planet(earth)

    mars = Planet.new("Mars",
                      "red",
                      6.39e23,
                      2.279e8,
                      "Opportunity explored the surface of Mars for 14 years!")
    my_solar_system.add_planet(mars)

    expected_value = (2.279e8 - 1.496e8).abs
    expect(my_solar_system.distance_between("earth", "mars")).must_be_close_to expected_value
    expect(my_solar_system.distance_between("earth", "venus")).must_equal nil
    expect(my_solar_system.distance_between("jupiter", "venus")).must_equal nil
  end
end
