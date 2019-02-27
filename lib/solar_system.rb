# class that is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  # creating methods to read/return star_name & planets
  attr_reader :star_name, :planets

  # constructor that accepts and stores star_name in an instance variable
  # and assigns an empty array to the instance variable planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # method that adds a planet to the @planets array
  def add_planet(planet)
    @planets << planet
  end

  # method that returns a list of all planets in a given solar system
  def list_planets
    planet_list = "Doggos orbiting #{@star_name}: "
    @planets.each_with_index { |planet, i| planet_list += "\n#{i + 1}. #{planet.name}" }
    return planet_list
  end

  # method that returns the instance of a planet when given a string of its name
  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name == planet_string.capitalize
        return planet
      end
    end
  end

  # method that adds a new planet to the existing solar system
  def add_new_planet
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
    add_planet(new_planet_final)
  end
end
