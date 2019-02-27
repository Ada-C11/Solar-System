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
    list = "Planets orbiting #{star_name}"

    @planets.each_index do |i|
      list += "\n#{i + 1}. #{@planets[i].name}"
    end

    return list
  end

  def find_planet_by_name(name)
    # planet_name = name.downcase

    # @planets.each do |planet|
    #   if planet.name == planet_name
    #     return planet
    #   else
    #     return nil
    #   end
    # end

    @planets.find do |planet|
      return planet.name.downcase == name.downcase
    end
    # @planets.each do |planet|
    #   if planet.name.downcase == name.downcase
    #     return planet
    #   end
    #   return nil
    # end
  end

  def planet_details
    print "What planet would you like to know about?: "
    planet_choice = gets.chomp
    found_planet = find_planet_by_name(planet_choice)
    puts found_planet.summary
  end

  def new_planet
    puts "Alright, tell me a bit about your planet."
    print "\nEnter a name for your planet: "
    planet_name = gets.chomp
    print "Enter a color for your planet: "
    planet_color = gets.chomp
    print "Enter the mass of your planet in kg: "
    planet_mass = gets.chomp.to_i
    print "Enter the distance of your planet from the sun in km: "
    planet_distance = gets.chomp.to_i
    print "Enter a fun fact about your planet: "
    planet_fact = gets.chomp

    user_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
    # add_planet(Planet.new(user_planet))
    add_planet(user_planet)
  end
end
