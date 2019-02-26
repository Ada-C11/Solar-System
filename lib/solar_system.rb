class SolarSystem
  attr_reader :name, :planets

  def initialize(name)
    @name = name
    @planets = Array.new
  end

  def add_planet(instance_of_planet)
    @planets.push(instance_of_planet)
    return true
  end
end
