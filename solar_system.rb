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
    list = @planets.each_with_index.map do |planet, i|
      "#{i + 1}. #{planet.name}"
    end
    return "Planets orbiting #{@star_name}: \n#{list.join("\n")}"
  end

  def find_planet_by_name(planet_name)
    return @planets.find do |planet|
             planet.name == planet_name.capitalize
           end
  end

  def new_planet_information
    puts "What is the name of the planet?"
    new_name = gets.chomp
    puts "What color is #{new_name}?"
    new_color = gets.chomp
    puts "What is the mass in kg of #{new_name}?"
    new_mass = gets.chomp
    puts "How far is #{new_name} from the sun in km?"
    new_distance = gets.chomp
    puts "What is a fun fact about #{new_name}?"
    new_fun_fact = gets.chomp

    new_planet = Planet.new(new_name, new_color, new_mass, new_distance, new_fun_fact)
    add_planet(new_planet)
  end

  # Wave 2 optional step 6
  # def distance_between(planet1, planet2)
  #   value = @planets.name(planet1). - planet2
end
