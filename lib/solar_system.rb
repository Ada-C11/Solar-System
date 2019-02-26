class SolarSystem
  attr_reader :name, :planets

  def initialize(name)
    @name = name.capitalize
    @planets = Array.new
  end

  def add_planet(instance_of_planet)
    @planets.push(instance_of_planet)
    return true
  end

  def list_planets
    string_planets = "Planets orbiting #{self.name}"
    @planets.each_with_index do |planet, i|
      string_planets += "\n#{i + 1}. #{planet.name}"
    end
    return string_planets
  end
end
