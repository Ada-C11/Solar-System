require_relative "Planet"
require_relative "Solar_System"

def main
  mars = Planet.new("Mars", "red", 6.3E23, 227.9E9, "greek god of war Aries planet")
  venus = Planet.new("Venus", "pink", 4.86E24, 108E9, "greek goddess of love Aphrodites planet")
  puts "the distance from the sun to #{mars.name} is #{mars.distance_from_sun_km} kilometers"
  puts "the mass of #{venus.name} is #{venus.mass_kg} kilograms"
  puts venus.summary #notreturn

  solar_system = SolarSystem.new("Solus")
  neptune = Planet.new("Neptune", "blue", 1.02E26, 4.495E9, "greek god of the sea Poseidons planet")
  mars = Planet.new("Mars", "red", 6.3E23, 227.9E9, "greek god of war Aries planet")
  venus = Planet.new("Venus", "pink", 4.86E24, 108E9, "greek goddess of love Aphrodites planet")
  solar_system.add_planet(neptune)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  list = solar_system.list_planets
  puts list
end

main
