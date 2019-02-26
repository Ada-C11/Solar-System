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

  #create list planets method

end
