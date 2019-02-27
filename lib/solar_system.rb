require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
    @planet_print = ["Planets orbiting #{star_name}"]
    #@new_planet
  end

  def add_planet(planet)
    @planets << planet
  end

  def add_new_planet
    print "Okay, what's the name of the planet we're missing?\n"
    new_name = gets.chomp
    print "Cool, what color is it?\n"
    new_color = gets.chomp
    print "What about its mass in kilograms?\n"
    new_mass_kg = gets.chomp
    until new_mass_kg.to_f > 0
      print "Must be a number greater than zero.\n"
      new_mass_kg = gets.chomp
    end
    print "Now I need its distance from the sun in kilometers.\n"
    new_distance = gets.chomp
    until new_distance.to_f > 0
      print "Must be a number greater than zero.\n"
      new_distance = gets.chomp
    end
    print "And finally, what's a fun fact about this planet?\n"
    new_fun_fact = gets.chomp

    new_planet = Planet.new(new_name, new_color, new_mass_kg, new_distance, new_fun_fact)
    add_planet(new_planet)

    print @planets
  end

  def list_planets
    @planets.each_index do |index|
      @planet_print << "#{index + 1}. #{@planets[index].name}"
    end
    return @planet_print
  end

  def find_planet_by_name(input_name)
    @planets.each do |each_planet|
      if each_planet.name.casecmp(input_name) == 0
        return each_planet.summary
      end
    end
    return "Invalid planet."
  end

  # Why won't this method work on planets added via add_new_planet?
  def find_planet_distance_by_name(planet)
    @planets.each do |each_planet|
      if each_planet.name.casecmp(planet) == 0
        return each_planet.distance_from_sun_km
      end
    end
    return "Invalid planet."
  end

  def distance_between(planet1_name, planet2_name)
    planet1_position = find_planet_distance_by_name(planet1_name)
    planet2_position = find_planet_distance_by_name(planet2_name)
    if planet1_position.is_a?(Float) == false || planet2_position.is_a?(Float) == false
      return "Invalid planet entered."
    end
    return "#{(planet2_position - planet1_position).abs} kilometers"
  end
end
