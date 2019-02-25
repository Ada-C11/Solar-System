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
    count = 1
    formatted = ""
    puts "Planets orbiting #{@star_name}:"
    @planets.each do |p|
      formatted += "#{count}. #{p.name}\n"
      count += 1
    end
    return formatted
  end

  def find_planet_by_name(planet)
    @planets.map{|p| return p if p.name == planet}
  end

end