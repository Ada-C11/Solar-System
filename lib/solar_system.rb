# class that is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  # creating methods to read/return star_name & planets
  attr_reader :star_name, :planets

  # creating a constructor that accepts and stores star_name in an instance variable
  # and assigns an empty array to the instance variable planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # creating a method that adds a planet to the @planets array
  def add_planet(planet)
    @planets << planet
  end

  # creating a method that returns a list of all planets in a given solar system
  def list_planets
    planet_list = "Doggos orbiting #{@star_name}: "
    @planets.each_with_index { |planet, i| planet_list += "\n#{i + 1}. #{planet.name}" }
    return planet_list
  end

  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name == planet_string.capitalize
        return planet
      end
    end
  end
end

# milky_way = SolarSystem.new("Twinkles")
# milky_way.add_planet("Waffles")
# milky_way.add_planet("Cuddles")
# puts milky_way.list_planets
