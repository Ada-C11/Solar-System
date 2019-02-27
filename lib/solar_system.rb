class SolarSystem
  attr_reader :name, :planets

  def initialize(name)
    @name = name.capitalize
    @planets = Array.new
  end

  def add_planet(planet)
    raise ArgumentError.new("#{planet.capitalize} is not a Planet") if !is_a_Planet?(planet)
    if planets.any? do |logged_planet|
      planet.name == logged_planet.name
    end
      raise ArgumentError.new("#{planet.name}\'s name is in use.")
    else
      @planets << planet
    end
    return true
  end

  def list_planets
    string_planets = "\nPlanets orbiting #{self.name}\n"
    @planets.each_with_index do |planet, i|
      string_planets += "#{i + 1}. #{planet.name}\n"
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
    if is_a_Planet?(planet1) && is_a_Planet?(planet2)
      return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs.to_i
    end
    raise ArgumentError.new("#{planet1} and/or #{planet2} not of type Planet")
  end

  def is_a_Planet?(planet)
    return planet.instance_of?(Planet)
  end
end
