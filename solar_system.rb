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
    planet_list_string = "Planets orbiting #{star_name}\n"
    planets.each_with_index do |planet, index|
      planet_list_string = planet_list_string + "#{index + 1}. #{planet.name}\n"
    end
    return ("\n" + planet_list_string).bold
  end

  def find_planet_by_name(planet_name)
    planets.each do |planet|
      if planet_name.downcase == planet.name.downcase
        return planet
      end
    end
    return nil # if planet isn't found
  end

  def distance_between(planet1, planet2)
    (planet2.distance_from_sun_km - planet1.distance_from_sun_km).abs
  end

  def planet_details
    print "What planet would you like to learn about? > "
    planet_choice = get_planet_input
    return "\n#{find_planet_by_name(planet_choice).summary}\n".bold
  end

  def new_planet
    print "Planet name > "
    name = gets.chomp.downcase.capitalize
    print "Planet color > "
    color = gets.chomp.downcase
    print "Planet mass (in kg) > "
    mass_km = gets.chomp.to_i
    print "Distance from sun (in km) > "
    distance_from_sun_km = gets.chomp.to_i
    print "Fun fact about planet: It's... > "
    fun_fact = gets.chomp.downcase
    add_planet(Planet.new(name, color, mass_km, distance_from_sun_km, fun_fact))
  end

  def compare_distances
    print "Planet 1 > "
    planet_1 = get_planet_input
    print "Planet 2 > "
    planet_2 = get_planet_input
    return "\n#{planet_1} and #{planet_2} are #{distance_between(find_planet_by_name(planet_2), find_planet_by_name(planet_1))} km apart.\n".bold
  end

  def get_planet_input
    planet_input = gets.chomp.downcase.capitalize
    until find_planet_by_name(planet_input)
      puts "\nUh oh, that planet doesn't exist. Here are the planets that do exist:".bold.red
      puts list_planets
      print "Pick a planet > "
      planet_input = gets.chomp.downcase.capitalize
    end
    return planet_input
  end
end
