require_relative "planet"
require_relative "solar_system"

def main
  big_ol_pupper = SolarSystem.new("Big Ol Pupper")
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

  big_ol_pupper.add_planet(waffles)
  big_ol_pupper.add_planet(cuddles)
  big_ol_pupper.add_planet(whiskey)
  big_ol_pupper.add_planet(bear)
  big_ol_pupper.add_planet(pancake)

  selection = "list planets"
  # while selection != "exit"
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
      print "\nWhat is the name of the planet you would like to add?: "
      new_planet = gets.chomp.capitalize
      print "What is the color of the planet your are adding?: "
      new_planet_color = gets.chomp.downcase
      print "What is the mass of the planet you are adding (in kg)?: "
      new_planet_mass = gets.chomp
      print "What is the distance of this planet from Big Ol Pupper (in km)?: "
      new_planet_distance = gets.chomp
      print "What is a fun fact about this planet?: "
      new_planet_fun_fact = gets.chomp.capitalize
      new_planet_final = Planet.new(new_planet, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fun_fact)
      big_ol_pupper.add_planet(new_planet_final)
      puts "\n========= New planet has been added to the Big Ol Pupper solar system! <3 =========="
    when "exit"
      break
    end
  end
end

main
