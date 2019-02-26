# Wave 2
require_relative 'planet.rb'

class SolarSystem
  attr_reader :star_name, :planets
  # Constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  # Take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet.name
  end

  puts 

  def planet_list
    @planets.each do |planet|
      # return planet # returns the planet at index 0 and then exits because return breaks a method
      next
    end
    return @planets
  end

    def list_planets
      list = ""
      for i in (0..@planets.length - 1)
        list += "\n#{i + 1}. #{@planets[i]}"
      end
      return list
    end

    def find_planet_by_name(planet_name)
      # found_planet = ""
      for i in (0..@planets.length - 1)
        if @planets[i] == planet_name
          # found_planet = planet_name
          return @planets[i]
        end
      end
      # return found_planet
    end
end