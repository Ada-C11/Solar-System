require "terminal-table"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    if mass_kg < 0
      raise ArgumentError, "Mass must be greater than zero."
    else
      @mass_kg = mass_kg
    end
    if distance_from_sun_km < 0
      raise ArgumentError, "Distance must be greater than zero."
    else
      @distance_from_sun_km = distance_from_sun_km
    end
    @fun_fact = fun_fact
  end

  def summary
    rows = [["Name", @name], ["Color", @color], ["Mass", @mass_kg], ["Distance from sun", @distance_from_sun_km], ["Fun Fact", @fun_fact]]
    table = Terminal::Table.new :title => "Planet", :rows => rows
    return table
  end
end
