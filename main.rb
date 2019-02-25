
require_relative "planet"
require "terminal-table"

def main
  earth = Planet.new("Earth", "turquoise", 5.97e34, 149.6e6, "We have tacos here")
  mars = Planet.new("Mars", "red", 0.642e24, 227.9e6, "Named after Mars, the Roman god of war")

  rows = []
  rows << [earth.name, earth.color, earth.mass_kg, earth.distance_from_the_sun_km, earth.fun_fact]
  rows << :separator
  rows << [mars.name, mars.color, mars.mass_kg, mars.distance_from_the_sun_km, mars.fun_fact]
  table = Terminal::Table.new :headings => ["Planet", "Color", "Mass (kg)", "Distance from the Sun (km)", "Fun Fact"], :rows => rows

  return table
end

puts main
