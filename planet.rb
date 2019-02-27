require "terminal-table"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  def summary
    rows = []
    rows << [@name, @color, @mass_kg, @distance_from_the_sun_km, @fun_fact]
    table = Terminal::Table.new :headings => ["Planet", "Color", "Mass (kg)", "Distance from the Sun (km)", "Fun Fact"], :rows => rows

    return table
  end
end
