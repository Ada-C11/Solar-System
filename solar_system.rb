class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planet = []
  end

  def add_planet(instance_of_planet)
    @planet << instance_of_planet
  end

  def list_planets
    puts "Planets orbiting #{@star_name}:"
    @planet.each_with_index do |planet, index| 
      puts "#{index+1}. #{planet.name}" 
    end 
  end

  def find_planet_by_name(planet)
    selected_planet = @planet.select { |other_planet| other_planet.name.downcase == planet.downcase }
    # selected_planet.each { |each_planet| each_planet.summary }
    
  end
end

