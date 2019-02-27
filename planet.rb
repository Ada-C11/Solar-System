# wave 1
require 'pry'
require 'colorize'
require 'terminal-table'

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize (name: "Planet", color: "Color", mass_kg: "Mass in Kg", distance_from_sun_km: "Distance in km", fun_fact: "This is a fun fact")
    @name = name
    @color = color
    @mass_kg = mass_kg 
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @summary = summary
    return summary
  end

  def summary
    table = Terminal::Table.new :headings => ['Name', 'Color', 'Mass', 'Distance', 'Fun fact'] 
    table.add_row [@name, @color, @mass_kg, @distance_from_sun_km, @fun_fact]

    return table
    # return "The planet #{self.name} is #{self.color} in color, has a mass of #{self.mass_kg}kg, and is #{self.distance_from_sun_km}km from the sun. A fun fact about your planet: #{self.fun_fact}"
  end
end
