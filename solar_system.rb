class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    string = "\nPlanets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, i|
      string << "#{i + 1}. #{planet.name}\n"
    end
    return string
  end

  def find_planet_by_name(planet_name)
    match_list = @planets.select { |planet| planet.name == planet_name.capitalize }
    if match_list.length == 0
      puts "Oops!  No match found for #{planet_name}."
      print "Please try again > "
      planet = gets.chomp.capitalize
      match_list = find_planet_by_name(planet)
    else
      return match_list
    end
  end
end
