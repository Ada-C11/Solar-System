# Wave 2

# Create a new class called SolarSystem
#   - Constructor should take one parameter (star_name)
#   - Each SolarySystem should have an instance variable @planets
#       + @planets should store an array of planets
#       + When SolarSystem is created, @planets should be set to an empty array.
# Both @star_name and @planets should be READABLE but NOT WRITABLE.

# Create a method SolarSystem#add_planet
#   - Will take an instance of a Planet as a parameter
#   - Will add instance of a Planet to a list of planets

# Create a method SolarSystem#find_planet_by_name
#   - Takes the name of a planet as a string
#   - Returns the corresponding instance of Planet
#   - Lookup should be case-INsensitive (Earth, earth, eArth should be treated the same)

class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    string = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, i|
      string << "#{i + 1}. #{planet.name}\n"
    end
    return string
  end

  # What should method do if there are MULTIPLE planets with the given name?
  def find_planet_by_name(planet_name)
    match = false
    match_list = []
    @planets.each do |planet|
      if planet.name == planet_name.capitalize
        match = true
        match_list << planet
      end
    end
    if !match
      raise ArgumentError, "No match found for #{planet_name}!"
    else
      return match_list
    end
  end
end
