class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def star_name
    return @star_name
  end

  def planets
    return @planets
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    str = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, index|
      str += "#{index + 1}.  #{planet.name}\n"
    end
    return str
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
        return planet
      end
    end
    return nil
  end
end
