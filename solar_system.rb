class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Create a method add_planet,
  #which will take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet) #Planet.name
    #iterate through each Planet.name and put it in the @planets array.
    @planets << planet
  end

  def list_planets
    result = "Planets orbitting:\n"
    planet_names = @planets.map do |planet|
      planet.name
    end
    planet_names.each_with_index do |name, index|
      result += "#{index + 1}. #{name}\n"
    end
    return result
    # @planets.name specify that you're searching the name
  end

  def list_planets_one
    result = "Planets orbitting:\n"
    @planets.each_with_index do |planet, index|
      result += "#{index + 1}. #{planet.name}\n"
    end
    return result
  end

  def find_planet_by_name_two(name)
    return @planets.find do |planet|
             planet.name.downcase == name.downcase
           end
  end

  def new_planet
    puts "Add planet name:"
    name = gets.chomp.downcase
    puts "Add color:"
    color = gets.chomp
    puts "Add mass in kg:"
    mass_kg = gets.chomp.to_i
    puts "Distance from the sun?"
    distance_from_sun_km = gets.chomp.to_i
    puts "What is a fun fact about your planet?"
    fun_fact = gets.chomp
    user_input_planet = (Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact))
    # planet(user_input_planet)
    # puts sol_system.new_planet.summary
    add_planet(user_input_planet)
  end
end
