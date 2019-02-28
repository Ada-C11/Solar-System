require_relative "planet.rb"
require_relative "solar_system.rb"

def main_menu
  puts "Welcome to make yo own planet!"
  puts "What would you like to do next? You can choose from: \n 1. List Planets \n 2. Planet Details \n 3. Add Planet \n 4. Exit"
  main
end

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  cloudster = Planet.new("Cloudster", "pink", 5, 23, "Hello Kitty Universe planet")
  puffy = Planet.new("Puffy", "periwinkle", 124234, 325623, "Hello Kitte bioverse")
  glitterish = Planet.new("Glitterish", "surruliean", 35435472, 23513541, "Hello Kitty world with lots of water and grass")
  
     # Solar System 1
    solar_system = SolarSystem.new("Ethereal")
    solar_system.add_planets(earth)
    solar_system.add_planets(cloudster)
    list = solar_system.list_planets

  # solar_system = SolarSystem.new("Ethereal")
  # solar_system.add_planet(earth)
  # solar_system.add_planet(cloudster)
  # solar_system.add_planet(puffy)
  # solar_system.add_planet(glitterish)

  user_input = "y"
  while user_input == "y"
      puts $\
      puts "Make a selection"
      choice = gets.chomp.to_i

    list = solar_system.list_planets

    if choice == 1 
      print list
    elsif choice == 2 
      puts "Lets find out more about the planets"
      print list 
      planet_info = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet_info)
    
      if found_planet
        puts "You have chosen #{found_planet.name}."
        puts found_planet.summary
      end
    
    elsif choice == 3 
      solar_system.create_planet
    elsif choice == 4 
      answer = "y"
      while answer == "y"
        puts "Do you want to play again? Yes or No?"
        answer = gets.chomp 
        if answer == "yes" 
          main_menu
        else 
          break
        end
      end
      exit
    end
  end 
end
main_menu

#push!