class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet_instance)
    planets << planet_instance
  end

  def list_planets
    planets.each_with_index do |planet, index|
      puts "#{index + 1}: #{planet.name}"
    end
  end
end
