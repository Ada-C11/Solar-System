require_relative "planet"
require_relative "solar_system"
require "pry"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def get_info_new_planet
    print "\nEnter new planet name: "
    planet_name = gets.chomp.to_s
    print "\nDescription of #{planet_name}'s color: "
    color = gets.chomp.to_s
    print "\nDistance of planet from #{@star_name}(km): "
    distance = gets.chomp.to_f
    print "\nMass of #{planet_name}(kg): "
    mass = gets.chomp.to_f
    print "\nInteresting fact about #{planet_name}: "
    fun_fact = gets.chomp.to_s
    print "\nPlease rate the planet's twang on a scale of 0-5.0 #{planet_name}: "
    twang_level = gets.chomp.to_f
    print "\nPlease rate the planet's likelihood to be beloved in New England, on a scale of 0-100 #{planet_name}: "
    likelihood_to_be_loved_by_yanks = gets.chomp.to_s

    new_planet = Planet.new(planet_name, color, distance, mass, fun_fact, twang_level, likelihood_to_be_loved_by_yanks)

    add_planet(new_planet)
    print "\nGenerating new data"
  end

  # create list of planets

end
