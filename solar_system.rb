class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet_instance)
    @planets.push(planet_instance)
  end

  def list_planets
    output = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, index|
      output += "#{index + 1}" + ". " + planet.name + "\n"
    end
    return output
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.downcase.capitalize
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      else
        object = planet
      end
    end
    return nil
  end
end
