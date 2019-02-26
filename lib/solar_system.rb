class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{star_name}"

    @planets.each_index do |i|
      list += "\n#{i + 1}. #{@planets[i].name}"
    end

    return list
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      end
      return nil
    end
  end
end

# milky_way = SolarSystem.new("milky_way")
# milky_way.add_planet("Earth")

# puts milky_way.planets
