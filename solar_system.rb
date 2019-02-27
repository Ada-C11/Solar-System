class SolarSystem
  attr_reader :star_name, :planet

  def initialize(star_name)
    @star_name = star_name
    @planet = []
  end

  def add_planet(instance_of_planet)
    @planet << instance_of_planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}:\n"
    @planet.each_with_index do |planet, index|
      planet_list << "#{index + 1}. #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(planet)
    selected_planet = @planet.select { |other_planet| other_planet.name.downcase == planet.downcase }
    selected_planet.each { |each_planet| puts each_planet.summary }
  end

  def make_new_planet
    puts "What is the name of your planet?"
    user_planet = gets.chomp.capitalize
    puts "What color is the planet?"
    user_color = gets.chomp
    puts "What is the planet's mass (in kg)?"
    user_mass = gets.chomp
    puts "What is the planet's distance from the sun (in km)"
    user_distance = gets.chomp
    puts "What is a fun fact about this planet?"
    user_fact = gets.chomp
    new_planet = Planet.new(user_planet, user_color, user_mass, user_distance, user_fact)
    add_planet(new_planet)
    puts "Your planet has been added"
  end
end
