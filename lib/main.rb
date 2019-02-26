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

  answer = "list planets"
  while answer == "list planets"
    print "\nWhat would you like to do next? (list planets, planet details, or exit): "
    selection = gets.chomp.downcase

    case selection
    when "list planets"
      puts big_ol_pupper.list_planets
    when "planet details"
      print "\nWhat planet would you like to see details for?: "
      planet_details = gets.chomp.downcase
      found_planet = big_ol_pupper.find_planet_by_name(planet_details)
      puts found_planet.summary
    when "exit"
      break
    end
  end

  # list = big_ol_pupper.list_planets
  # puts list

  # found_planet = big_ol_pupper.find_planet_by_name("Cuddles")
  # # found_planet is an instance of class Planet
  # puts found_planet
  # # => #<Planet:0x00007fe7c2868ee8>
  # puts found_planet.summary
  # # => Earth is a blue-green planet ...

end

main
