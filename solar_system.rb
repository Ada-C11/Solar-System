class SolarSystem
  attr_reader :star_name, :planet

  def initialize(star_name)
    @planets = []
    @star_name = star_name
  end

  def add_planets(planet)
    @planets.push(planet)
  end

  def find_planet_by_name(name)
    #raise ArgumentError unless @planet.include?(name.capitalize)
    @planets.find { |planet| planet.name.downcase == name.downcase }
  end

  def list_planets
    rotating_planets = @planets.map.with_index { |item, index|
      "#{index + 1}" + "." + item.name
    }
    puts "Planets orbiting Sun are: "
    return rotating_planets
  end
end
