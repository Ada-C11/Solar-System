require_relative "planet"
require_relative "solar_system"

def get_user_input(criteria)
  puts "enter planet #{criteria}"
  return gets.chomp
end

def user_creates_planet(solarsystem)
  name = get_user_input("name").capitalize
  color = get_user_input("color")
  mass_kg = get_user_input("mass").to_f
  distance_from_sun_km = get_user_input("distance from sun").to_f
  fun_fact = get_user_input("fun fact")
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  solarsystem.add_planet(new_planet)
  return new_planet
end

def main
  sol = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 4.962e24, 1.656e8, "Home of Martians")
  venus = Planet.new("Venus", "green", 8.972e24, 2.496e8, "Dense planet")
  sol.add_planet(earth)
  sol.add_planet(mars)
  sol.add_planet(venus)

  command = ""
  until command == "4"
    puts "\nPlease enter the number corresponding to the options: [1] list planets, [2] planet details, [3] add planet, [4] exit\n"
    command = gets.chomp
    while ["1", "2", "3", "4"].include?(command) == false
      puts "Not a valid input. Please enter 1, 2, 3, or 4"
      command = gets.chomp
    end
    case command
    when "1"
      puts sol.list_planets
    when "2"
      planet = sol.find_planet_by_name
      puts planet.summary
    when "3"
      user_creates_planet(sol)
    end
  end
end

main
