class SolarSystem
  attr_reader :name, :planets

  def initialize(name)
    @name = name.capitalize
    @planets = Array.new
  end

  def add_planet(planet)
    raise ArgumentError.new("#{planet.capitalize} is not a Planet") if !planet.instance_of?(Planet)
    @planets << planet
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

  def distance_between(planet1, planet2)
    if planet1.instance_of?(Planet) && planet2.instance_of?(Planet)
      return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs.to_i
    end
    raise ArgumentError.new("#{planet1} and/or #{planet2} not of type Planet")
  end
end
