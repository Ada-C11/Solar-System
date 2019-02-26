class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :planets, :star_name

  def add_planet(planet)
    @planets.push(planet)
    return @planets
  end

  def list_planets
    list = "Planets orbiting #{@star_name}\n"
    @planets.each.with_index(1) do |planet, i|
      list += "#{i}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(lookup_planet)
    matching_planets = @planets.select do |planet|
      lookup_planet.capitalize == planet.name
    end
    if matching_planets.length > 1
      puts "There are mulitple results with the same name. We picked the first matching result"
    end
    return matching_planets[0]
  end
end
