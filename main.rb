require_relative "planet"
require_relative "solar_system"

def main
  #initialize solar system and planets
  food_way = SolarSystem.new("Pad Thai Star")
  burger = Planet.new("Burger", "brown", 23423, 234, "Inhabitants of burger really like to eat meat.")
  salad = Planet.new("Salad", "green and others depending on time", 236, 235, "The planet Salad changes colors depending on the season.")
  pho = Planet.new("Pho", "white and brown", 75, 234854, "The planet Pho always smells delicious.")

  #add to solar system
  food_way.add_planet(burger)
  food_way.add_planet(salad)
  food_way.add_planet(pho)

  # control loop for program next steps
  next_step = ""
  until next_step == "exit"
    puts "What would you like to do next? Options - 'list planets', or 'exit'"
    next_step = gets.chomp.downcase
    if next_step == "list planets"
      list = food_way.list_planets
      puts list
    end
  end
end

### OLD CODE #####
# earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49638, "houses these things called humans")
# mars = Planet.new("Mars", "scary-red", 4.930e24, 0.43523, "a day in Mars lasts 24 hours and 39 minutes long")

# puts earth
# puts mars.summary

# # checking for accurate formatting and list of planets
# solar_system = SolarSystem.new("Brittny")
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
# list = solar_system.list_planets
# puts list

# # checking for accurate found_planet
# found_planet = solar_system.find_planet_by_name("earth")
# puts found_planet
# puts found_planet.summary

main
# puts main.summary
