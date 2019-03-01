require_relative "Planet"
require_relative "Solar_System"

def main
  solar_system = SolarSystem.new("Solus")
  neptune = Planet.new("Neptune", "blue", 1.02E26, 4.495E9, "greek god of the sea Poseidons planet")
  mars = Planet.new("Mars", "red", 6.3E23, 227.9E9, "greek god of war Aries planet")
  venus = Planet.new("Venus", "pink", 4.86E24, 108E9, "greek goddess of love Aphrodites planet")
  solar_system.add_planet(neptune)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  list = solar_system.list_planets

  found_planet = solar_system.find_planet_by_name("Venus")

  input = ""

  until input == "exit"
    puts "what would you like to do? list planets, planet details, create planet, exit"
    input = gets.chomp
    if input == "list planets"
      list = solar_system.list_planets
      puts list
    elsif input == "planet details"
      puts "what planet do you want to learn about?"
      user_add_planet = gets.chomp
      chosen_planet = solar_system.find_planet_by_name(user_add_planet)
      puts chosen_planet.summary
    elsif input == "create planet"
      planet.new = add_user_planet
      solar_system.add_planet(add_user_planet)
    else
      puts "toodles!"
    end
  end
end

def add_new_planet
  puts "What is the name of the planet?"
  name = gets.chomp.capitalize
  puts "What color is the planet?"
  color = gets.chomp.downcase
  puts "What is the planet's mass in kilograms?"
  mass_kg = gets.chomp.to_f
  puts "What is the planet's distance from A Wrinkle in Time?"
  distance_from_sun_km = gets.chomp.to_i
  puts "What is a fun fact about the planet?"
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
end

main
