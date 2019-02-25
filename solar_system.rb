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
    return "Planets orbiting #{@star_name}",
           @planets.map!.each_with_index do |planet, index|
             "#{index + 1}. #{planet}"
           end
  end
end
