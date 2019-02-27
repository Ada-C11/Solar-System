require_relative "planet"
require_relative "solar_system"

# method that creates an instance of a solar system and adds instances of planets to it
# also, creates a control panel for the user
def main
  # creating an instance of a solar system
  big_ol_pupper = SolarSystem.new("Big Ol Pupper")

  # creating instances of planets
  waffles = Planet.new("Waffles", "\'maple syrup\' brown", 3.555e23, 1.273e12, "It is the only known " \
  "planet to be smothered in fried chicken")
  cuddles = Planet.new("Cuddles", "soft velvet grey", 9.973e30, 0.000002, "This planet loves the Big Ol " \
  "Pupper so much that it can\'t get close enough to it")
  whiskey = Planet.new("Whiskey", "rich amber", 4.342e27, 3.473e13, "This planet has been aged for" \
  "billions of years in a giant cosmic cedar barrel")
  bear = Planet.new("Bear", "jet black", 5.342e20, 5.342e14, "Contains more hugs per capita than any other" \
  "known planet")
  pancake = Planet.new("Pancake", "light brown", 7.888e24, 3.342e5, "There is no planet fluffier or " \
  "flatter than Pancake")

  # adding instances of planets to an array
  big_ol_pupper.add_planet(waffles)
  big_ol_pupper.add_planet(cuddles)
  big_ol_pupper.add_planet(whiskey)
  big_ol_pupper.add_planet(bear)
  big_ol_pupper.add_planet(pancake)

  # control panel that allows users to list planets, look at planet detials, add planets, or exit program
  selection = "list planets"
  while ["list planets", "planet details", "add planet", "exit"].include?(selection)
    print "\nWhat would you like to do next? (list planets, planet details, add planet, or exit): "
    selection = gets.chomp.downcase

    until ["list planets", "planet details", "add planet", "exit"].include?(selection)
      print "Whoopsie Daisy! Please select an option from the list (list planets, planet details, add planet, or exit): "
      selection = gets.chomp.downcase
    end

    case selection
    when "list planets"
      puts "\n#{big_ol_pupper.list_planets}"
    when "planet details"
      print "\nWhat planet would you like to see details for?: "
      planet_details = gets.chomp.downcase
      found_planet = big_ol_pupper.find_planet_by_name(planet_details)
      puts "\n====== #{found_planet.name} ======"
      puts "#{found_planet.summary}"
    when "add planet"
      big_ol_pupper.add_new_planet
      puts "\n========= New planet has been added to the Big Ol Pupper solar system! <3 =========="
    when "exit"
      break
    end
  end
end

# runs main method
main
