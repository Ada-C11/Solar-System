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
    puts "What would you like to do next? Options - 'list planets', 'planet details', 'add planet', or 'exit'"
    next_step = gets.chomp.downcase
    if next_step == "list planets"
      list = food_way.list_planets
      puts list
    elsif next_step == "planet details"
      puts "Which planet would you like to learn more about?"
      user_planet = gets.chomp
      found_planet = food_way.find_planet_by_name(user_planet)
      if found_planet == nil
        puts "Sorry, that planet does not exist in the Food Way Solar System. Check your spelling or try a different planet."
      else
        puts found_planet.summary
      end
    elsif next_step == "add planet"
      puts "What planet would you like to add?"
      new_planet = gets.chomp.capitalize
      puts "What color is it?"
      planet_color = gets.chomp
      puts "How heavy is it - in kilograms?"
      planet_mass = gets.chomp.to_i
      puts "How far from the sun is it - in kilometers?"
      planet_distance = gets.chomp.to_i
      puts "Enter a fun fact!"
      planet_fun = gets.chomp
      adding_planet = Planet.new(new_planet, planet_color, planet_mass, planet_distance, planet_fun)
      food_way.add_planet(adding_planet)
    end
  end
end

main
