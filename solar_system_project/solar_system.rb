
class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    planets.push(planet)
  end

  def list_planets
    number = 1
    planet_list = "Planets orbiting #{star_name}:\n"
    planets.each do |x|
      planet_list += "#{number}: #{x.name}\n"
      number += 1
    end
    return planet_list
  end

  def find_planet_by_name(planet_string)
    formatted_planet_string = planet_string.split(/ |\_/).map(&:capitalize).join(" ")
    planets.each do |x|
      if x.name == formatted_planet_string
        return x
      end
    end
  end

  def planet_details
    puts "Which planet would you like to learn more about?: "
    planet_choice = gets.chomp
    return find_planet_by_name(planet_choice).summary
  end

  def distance_between(planet1, planet2)
    return (planet1.distance_from_sun_km.to_i - planet2.distance_from_sun_km.to_i).abs
  end

  def distance_between_planets
    puts "What is the first planet you would like to compare?: "
    planet1 = gets.chomp.split(/ |\_/).map(&:capitalize).join(" ")
    puts "What is the second planet you would like to compare?: "
    planet2 = gets.chomp.split(/ |\_/).map(&:capitalize).join(" ")
    return "There are #{distance_between(find_planet_by_name(planet1), find_planet_by_name(planet2))}km between #{planet1} and #{planet2}."
  end

  def add_user_planet
    puts "What is the name of the planet?: "
    planet_name = gets.chomp.capitalize
    puts "What is the color of #{planet_name}?: "
    planet_color = gets.chomp
    puts "What is the mass of #{planet_name}(in kg): "
    planet_mass = gets.chomp
    puts "What is #{planet_name}'s distance from the sun(in km): "
    planet_distance = gets.chomp
    puts "What is a fun fact about #{planet_name}?: "
    planet_fun_fact = gets.chomp.downcase

    planet_name = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fun_fact)
    add_planet(planet_name)

    return "Your planet has been added to the solar system."
  end
end
