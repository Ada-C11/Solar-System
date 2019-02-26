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
    tracker = 1
    @planets.each do |planet|
      output += "#{tracker}" + ". " + planet.name + "\n"
      tracker += 1
    end
    return output
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.downcase.capitalize
    # puts "This is user input: #{planet_name}"
    @planets.each do |planet|
      # puts "This is planet.name: #{planet.name}"
      if planet.name == planet_name
        return planet
      else
        object = planet
      end
    end
    return nil
  end
end
