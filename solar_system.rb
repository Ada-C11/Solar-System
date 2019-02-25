# solar_system.rb
require_relative "planet.rb"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet) # takes an instance of planet
    planets << planet.name # add it to list of planets
  end

  def list_planets
    # planets.each do |planet|
    # puts planets
    list_num = 1
    # array_index = 0
    list_string = "Planets orbiting #{star_name}\n"
    planets.each do |planet|
      list_string << "#{list_num}. #{planet}\n"
      list_num += 1
    end
    return list_string
  end
end

# def list_planets
#     puts "Planets orbiting #{star_name}:"
#     planets.each do |planet|
#       index = 1
#       return "#{index}. #{planet.name}"
#       index += 1
#     end
#   end
