require_relative "planet.rb"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet) # Takes an instance of planet
    planets << planet # Adds it to planets array
  end

  def list_planets
    list_num = 1
    list_string = "Planets orbiting #{@star_name}\n"
    @planets.each do |planet|
      list_string << "#{list_num}. #{planet.name}\n"
      list_num += 1
    end
    return list_string
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet
      end
    end
    return "That's not a planet I have information for"
  end

  # Use .abs to get absolute value of difference so program doesn't output a negative distance
  def distance_between(planet1, planet2)
    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

  def user_add_planet
    puts "What is the planet named?"
    name = gets.chomp.downcase
    puts "What color is the planet?"
    color = gets.chomp.downcase
    puts "What is the mass in kg of the planet?"
    mass = gets.chomp.to_f
    until mass.to_f > 0
      puts "Enter a positive number"
      mass = gets.chomp.to_f
    end
    puts "What is the distance of the planet from the sun in km?"
    distance = gets.chomp.to_f
    until distance.to_f > 0
      puts "Enter a positive number"
      distance = gets.chomp.to_f
    end
    puts "Enter a fun fact about the planet"
    fun_fact = gets.chomp
    name = Planet.new(name, color, mass, distance, fun_fact)
    add_planet(name)
  end
end
