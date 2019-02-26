require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    planet_list = "Planets orbiting #{star_name}: "
    i = 0
    @planets.each do
      planet_list += "\n#{i + 1}. #{@planets[i].name}"
      i += 1
    end
    return planet_list
  end

  def find_planet_by_name(name)
    i = 0
    @planets.each do
      if @planets[i].name.downcase == name.downcase
        return @planets[i]
      end
      i += 1
    end
  end

  def user_adds_planet
    puts "Please complete the following information for the planet you would like added: \nName: "
    name = gets.chomp
    puts "Color: "
    color = gets.chomp
    puts "Mass in kg: "
    mass = gets.chomp
    puts "Distance from sun in km: "
    distance = gets.chomp
    puts "Fun fact: "
    fact = gets.chomp
    new_planet = Planet.new(name, color, mass, distance, fact)
    self.add_planet(new_planet)
    puts "Thank you for adding #{name} to the solar system!"
    return new_planet
  end

  def distance_between(planet1, planet2)
    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end
end
