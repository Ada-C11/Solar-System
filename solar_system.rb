require_relative "planet"
require_relative "main"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def get_info_new_planet
    print "\nEnter new planet name: "
    planet_name = gets.chomp.to_s
    print "\nDescription of #{planet_name}'s color: "
    color = gets.chomp.to_s
    print "\nDistance of planet from #{@star_name}(km): "
    distance = gets.chomp.to_f
    print "\nMass of #{planet_name}(kg): "
    mass = gets.chomp.to_f
    print "\nInteresting fact about #{planet_name}: "
    fun_fact = gets.chomp.to_s
    print "\nPlease rate the planet's twang on a scale of 0-5.0 #{planet_name}: "
    twang_level = gets.chomp.to_f
    print "\nPlease rate the planet's likelihood to be beloved in New England, on a scale of 0-100 #{planet_name}: "
    likelihood_to_be_loved_by_yanks = gets.chomp.to_s

    new_planet = Planet.new(planet_name, color, distance, mass, fun_fact, twang_level, likelihood_to_be_loved_by_yanks)

    add_planet(new_planet)
    print "\nGenerating new data"
  end

  def list_planets
    list = "\nPlanets in the Country Music Universe:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name
    @planets.each do |planet|
      if planet.name == name.capitalize
        return planet
      end
    end
    return raise ArgumentError, "Planet does not exist in the Country Music Hall of Planets"
  end

  def get_planet_name
    print "\nEnter planet name: "
    planet = gets.chomp.to_s
    return find_planet_by_name(planet)
  end

  def get_planet_distance(name)
    @planets.each do |planet|
      if planet.name == name.capitalize
        return planet.distance
      end
    end
    return raise ArgumentError, "Planet not in solar system"
  end

  def find_distance_between
    planet1 = get_planet_name
    planet2 = get_planet_name
    distance = planet1.distance_from_sun_km - planet2.distance_from_sun_km
    puts "\nDistance between #{planet1.name} and #{planet2.name}: #{distance.abs} km."
  end
end
