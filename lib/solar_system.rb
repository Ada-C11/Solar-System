# Create a class for Solar System
class SolarSystem
  # Adding readers
  attr_reader(:star_name, :planets)
  # Adding a Constructor here!
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # method for printing list of planets
  def list_planets
    list = ""
    @planets.length.times do |index|
      list = list + "#{index + 1}.#{planets[index].name} \n"
    end
    return "Planets orbiting #{@star_name}:\n#{list}"
  end

  # method for seaching planets
  def find_planet_by_name(planet_name)
    return @planets.find {|planet| planet.name.upcase == planet_name.upcase}
  end

#   def distance_between(planet1="", planet2="")
#     planet1 = find_planet_by_name(name1)
#     planet2 = find_planet_by_name(name2)
#     return (distance_betweenplanet1.distance_from_sun_km - planet2.distance_from_sun_km)
#   end

  def make_planet
    puts $\ 
    puts "To create your own planet, let's input some details below:"

    puts "Name: "
    user_name = gets.chomp.capitalize
    puts "Color: "
    user_color = gets.chomp
    puts "Mass in kg: "
    user_mass = gets.chomp.to_f
    puts "Distance in km: "
    user_distance = gets.chomp.to_f
    puts "Super fun fact: "
    user_fact = gets.chomp

    new_planet = Planet.new(user_name, user_color, user_mass, user_distance, user_fact)
    add_planet(new_planet)
  end
end