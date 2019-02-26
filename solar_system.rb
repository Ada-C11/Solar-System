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
    return planet_list_string
  end

  def find_planet_by_name(planet_name)
    planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
        return planet
      end
    end
    raise ArgumentError, "There's no planet of that name"
  end

  def distance_between(planet1, planet2)
    planet2.distance_from_sun_km - planet1.distance_from_sun_km
  end

  def planet_details
    print "What planet would you like to learn about? > "
    planet_choice = gets.chomp
    return find_planet_by_name(planet_choice).summary
  end

  def new_planet
    print "Planet name > "
    name = gets.chomp
    print "Planet color > "
    color = gets.chomp
    print "Planet mass (in kg) > "
    mass_km = gets.chomp
    print "Distance from sun (in km) > "
    distance_from_sun_km = gets.chomp
    print "Fun fact about planet > "
    fun_fact = gets.chomp
    add_planet(Planet.new(name, color, mass_km, distance_from_sun_km, fun_fact))
  end
end
