class SolarSystem
  attr_reader :name, :planets

  def initialize(name)
    @name = name.capitalize
    @planets = Array.new
  end

  def add_planet(planet)
    planet.instance_of?(Planet) ? @planets << planet : (raise ArgumentError.new("Not a Planet"))
    return true
  end

  def list_planets
    string_planets = "Planets orbiting #{self.name}"
    @planets.each_with_index do |planet, i|
      string_planets += "\n#{i + 1}. #{planet.name}"
    end
    return string_planets
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      return planet if planet.name == name.capitalize
    end
    raise ArgumentError.new("No planet by #{name} found.")
  end
end
