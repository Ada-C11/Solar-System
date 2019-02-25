# solar_system.rb
require "terminal-table"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    table = Terminal::Table.new do |t|
      :title => "Planets orbiting #{@star_name}", :rows => rows
    
    return table

end