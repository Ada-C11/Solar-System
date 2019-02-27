
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

  def find_planet_by_name
    puts "Enter planet name"
    lookup_planet = gets.chomp.capitalize
    matching_planets = @planets.select do |planet|
      lookup_planet == planet.name
    end
    begin
      raise ArgumentError if matching_planets == []
    rescue ArgumentError
      puts "This planet is not found, enter a planet from the list"
      puts list_planets
      return find_planet_by_name
    end
    if matching_planets.length > 1
      puts "There are mulitple results with the same name. We picked the first matching result"
    end
    return matching_planets[0]
  end
end
