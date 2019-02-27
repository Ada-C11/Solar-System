require 'terminal-table'

class Planet
  attr_reader :name, :color, :mass_kg, 
  :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, 
  distance_from_sun_km, fun_fact)
    
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    unless @mass_kg > 0
      raise ArgumentError, "Planet mass must be greater than 0."
    end

    unless @distance_from_sun_km > 0
      raise ArgumentError, "Distance from the Sun must be greater than 0."
    end
  end

  def summary
    rows = []
    rows << ["Name: #{@name}"]
    rows << ["Color: #{@color}"]
    rows << ["Mass in kg: #{@mass_kg}"]
    rows << ["Distance from the sun: #{@distance_from_sun_km}"]
    rows << ["Fun fact: #{@fun_fact}"]
    table = Terminal::Table.new :rows => rows

    return table
  end

end

