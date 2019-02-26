class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets()
    planet_list = "Planets orbiting #{star_name}: \n"
    @planets.each_with_index do |planet, i|
      planet_list << "#{i + 1}: #{planet.name} \n"
    end
    return planet_list
  end

  def find_planet_by_name(name)
    #because the puts statement is in main, I can't have multipe answer can I
    found = @planets.each { |sol| sol.name.casecmp(name) == 0 }
    if found.length == 0
      return "#{name} is not in our solar system"
    else
      return found[0]
    end
  end
end
