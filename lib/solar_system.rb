

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet) # Elle's idea
    @planets << planet # Elle's idea
    # Create a method SolarSystem#add_planet, which will take an instance
    # of Planet as a parameter and add it to the list of planets.

    # var = Planet.summary
    # puts var
    # @planets << var
  end

  def list_planets
    # which will return (not puts) a string containing a list of all the
    # planets in the system. The string should be formatted in this style:
    # ________ somehow print the index and the name of the planet _______

    string = "Planets orbitting #{star_name}\n"
    @planets.each_with_index do |planet, index|
      string += "#{index + 1}.  #{planet.name}\n"
    end
    return string
  end

  def find_planet_by_name(planet_name)
    # var = ""
    @planets.each do |planet|
      return planet if planet.name == planet_name
    end
    # return planet_name if @planets.include?(planet_name)
  end
end
