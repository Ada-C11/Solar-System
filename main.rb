require_relative "./planet.rb"
require_relative "./solar_system.rb"

def main
  cheese = Planet.new("Cheese", "orange", 500, 12500, "Made of a delicious brie-gruyere blend")
  fire_ball = Planet.new("Fireball", "red", 100, 42000, "Gives the worst sunburn of all planets")
end

solar_system = SolarSystem.new("Pretty Big Star")

cheese_moon = Planet.new("Cheese", "orange", 500, 12500, "Made of a delicious brie-gruyere blend")
solar_system.add_planet(cheese_moon)

fire_ball = Planet.new("Fireball", "red", 100, 42000, "Gives the worst sunburn of all planets")
solar_system.add_planet(fire_ball)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name("Fireball")
puts found_planet.name
