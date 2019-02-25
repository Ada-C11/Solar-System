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
    puts "Planets orbiting #{@star_name}"
    counter = 0
    all_planets = ""
    @planets.each do |planet|
       all_planets += "#{counter += 1}.#{planet.name} "
    end
    return all_planets.split(' ')
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      end
    end
  end
end

# solar_system = SolarSystem.new('Sol')
# puts solar_system.star_name
# solar_system.add_planet('earth')
# solar_system.add_planet('mars')
# puts "#{solar_system.planets}"
