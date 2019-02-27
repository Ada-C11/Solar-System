require_relative "./planet.rb"
require_relative "./solar_system.rb"

def main
  solar_system = SolarSystem.new("Big Star")

  cheese = Planet.new("Cheese", "orange", 500, 12500, "Made of a delicious brie-gruyere blend")
  fire_ball = Planet.new("Fireball", "red", 100, 42000, "Gives the worst sunburn of all planets")

  solar_system.add_planet(cheese)
  solar_system.add_planet(fire_ball)

  puts "What do you want to do? Choose from list planets, planet details, add planet, or exit."
  input = gets.chomp.downcase
  until input == "exit"
    if input == "list planets"
      puts solar_system.list_planets
    elsif input == "planet details"
      puts "Please enter the name of the planet you'd like more details about:"
      request = gets.chomp.downcase
      solar_system.find_planet_by_name(request)
    elsif input == "add planet"
      puts "Great, let's create a new planet. What will its name be?"
      new_name = gets.chomp.capitalize
      puts "What is the color of #{new_name}?"
      new_color = gets.chomp.downcase
      puts "What is the planetary mass of #{new_name} in kg?"
      new_mass = gets.chomp.to_i
      puts "How far is #{new_name} from the sun in km?"
      new_distance = gets.chomp.to_i
      puts "What's a fun fact about #{new_name}?"
      new_fact = gets.chomp.capitalize
      new_planet = Planet.new(new_name, new_color, new_mass, new_distance, new_fact)
      solar_system.add_planet(new_planet)
    end
    puts "What do you want to do? Choose from list planets, planet details, add planet, or exit."
    input = gets.chomp.downcase
  end
end

main
