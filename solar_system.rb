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
end
