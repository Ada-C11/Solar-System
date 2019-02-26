# solar_system.rb
require "terminal-table"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def planet_array
    return @planets
  end

  def list_planets
    table = Terminal::Table.new do |t|
      @planets.each_with_index do |planet, index|
        t << ["#{index + 1}.  ", planet.name.capitalize]
      end
    end

    return table
  end

  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name.include?(planet_string.capitalize)
        return planet
      end
    end

    return "No matches found"
  end
end
