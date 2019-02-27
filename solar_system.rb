require 'terminal-table'
require 'colorize'

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
    counter = 0
    rows = []
    @planets.each do |planet|
       rows << ["#{counter += 1}".colorize(:light_blue), "#{planet.name} ".colorize(:light_green)]
    end
    table = Terminal::Table.new do |t|
      t.title = "Planets orbiting #{@star_name}".colorize(:color => :red) 
      t.rows = rows
      t.style = {:width => 40, :padding_left => 3, :border_x => "=", :border_i => "x"}  
    end
    return table
  end

  def find_planet_by_name(name)
    found = false
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        found = true
        return planet
      else 
        found = false
      end
    end
    if found == false 
      return "#{name.capitalize} is not a planet. However, you can create your own planet!"
    end
  end
end
