# Wave 1
# Create a class called Planet
# Each instance of this class will be a single planet

# Add a constructor to your Planet class
# Should take at least 5 parameters:
# - name
# - color
# - mass_kg
# - distance_from_sun_km
# - fun_fact

# Each parameter should be saved as an instance variable with the same name (e.g. @color).
# These i. variables should be READABLE from outside the class...but NOT WRITABLE.

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
    table = Terminal::Table.new do |t|
      t << ["Name", "Color", "Mass (kg)", "Distance From Sun (km)", "Fun Fact"]
      t.add_row [@name, @color, @mass_kg, @distance_from_sun_km, @fun_fact]
    end
    return table
  end
end
