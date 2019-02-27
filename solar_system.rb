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

  def list_planets
    table = Terminal::Table.new do |t|
      @planets.each_with_index do |planet, index|
        t << ["#{index + 1}.  ", planet.name.capitalize]
      end
    end

    return table
  end

  def new_planet
    puts "What is the planet's name?"
    name = gets.chomp
    puts "What is the planet's color?"
    color = gets.chomp
    puts "What is the planet's mass (kg)?"
    mass = gets.chomp
    puts "What is the planet's distance from the sun (km)?"
    sun_distance = gets.chomp
    puts "Please enter  a fun fact about the planet!"
    fun_fact = gets.chomp

    name = Planet.new(name, color, mass, sun_distance, fun_fact)
    add_planet(name)

    return "Successfully added new planet!"
  end

  def find_planet_by_name(planet_string)
    find_planet = @planets.find(ifnone = nil) do |planet|
      planet.name.capitalize == planet_string.capitalize
    end

    return find_planet
  end
end
