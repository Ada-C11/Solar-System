require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  astra = Planet.new("Astra", "silver", 5, 23, "Marvel Universe planet")
  ego = Planet.new("Ego", "green", 124234, 325623, "Marvel bioverse")
  namek = Planet.new("Namek", "blue-green", 35435472, 23513541, "Dragon Ball world with lots of water and grass")

  # Solar System # 1
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(astra)

  # caching results => list = solar_system.list_planets

  # Solar System # 2
  solar_system2 = SolarSystem.new("Dol")
  solar_system2.add_planet(ego)
  solar_system2.add_planet(namek)

  def what_to_do
    puts "What should we do next? (list planets/ planet details/ add planet/ exit):"
    return gets.chomp.downcase
  end

  continue = true

  while (continue)
    response = what_to_do
    case response
    when "list planets"
      puts "Which universe? (1 or 2)"
      response = gets.chomp
      if response == "1"
        puts "#{solar_system.list_planets}"
      elsif response == "2"
        puts "#{solar_system2.list_planets}"
      else
        puts "This is not an option."
      end
    when "planet details"
      puts "What is the name of the planet?"
      planet_detail = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet_detail)
      puts found_planet.summary
    when "add planet"
      solar_system.new_planet_information
    when "exit"
      continue = false
    end
  end
end

main
