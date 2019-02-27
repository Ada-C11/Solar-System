require "terminal-table"

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    table = Terminal::Table.new :headings => ["Name", "Color", "Mass (kg)", "Distance From Sun (km)", "Fun Fact"] do |t|
      #t << ["Name", "Color", "Mass (kg)", "Distance From Sun (km)", "Fun Fact"]
      t.add_row [@name, @color, @mass_kg, @distance_from_sun_km, @fun_fact]
    end
    return table
  end
end
