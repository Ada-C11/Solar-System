require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)
  venus = Planet.new("Venus", "green", 6.972e24, 2.496e8, "moody")
  solar_system.add_planet(venus)
  astra = Planet.new("Astra", "silver", 5, 23, "Marvel Universe planet")
  solar_system.add_planet(astra)
  ego = Planet.new("Ego", "green", 124234, 325623, "Marvel bioverse")
  solar_system.add_planet(ego)
  namek = Planet.new("Namek", "blue-green", 35435472, 23513541, "Dragon Ball world with lots of water and grass")
  solar_system.add_planet(namek)

  def wanna_add_planet()
    puts "please add a planet: what is the planets name?"
    name = gets.chomp
    puts "and color?"
    color = gets.chomp
    puts "and mass?"
    mass_kg = gets.chomp
    puts "and distance from the sun?"
    distance_from_sun_km = gets.chomp
    puts "and please share a fun fact"
    fun_fact = gets.chomp
    planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    return planet
  end

  loop do
    puts "do you want to"
    puts "1. list planets"
    puts "2. planet details"
    puts "3. add planet"
    puts "4. exit"
    answer = gets.chomp
    if answer.to_i == 1 || answer == "list planets"
      list = solar_system.list_planets
      puts list
    elsif answer.to_i == 2 || answer == "planet details"
      puts "what planet do you want more info on"
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif answer.to_i == 3 || answer == "add planet"
      solar_system.add_planet(wanna_add_planet())
    else
      break
    end
  end
end

main
