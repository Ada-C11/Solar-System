require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
    @planet_print = ["Planets orbiting #{star_name}"]
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    @planets.each_index do |index|
      @planet_print << "#{index + 1}. #{@planets[index].name}"
    end
    return @planet_print
  end

  def find_planet_by_name
    puts "Which planet would you like to learn about?"
    input_name = gets.chomp
    @planets.each do |each_planet|
      if each_planet.name.casecmp(input_name) == 0
        return each_planet.summary
      end
    end
    return "Invalid planet."
  end
end
