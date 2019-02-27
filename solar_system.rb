class SolarSystem
  attr_reader :star_name
  attr_accessor :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |item, index|
      planet_list += "#{index + 1}. #{item.name}\n"
    end

    return planet_list
  end

  def find_planet_by_name(planet_name)
    @planets.each do |this_planet|
      if this_planet.name.downcase == planet_name.downcase
        return this_planet
      end
    end
  end

  def add_planet_from_user_input
    puts "Please enter some details about this planet."
    print "Name: "
    @name = gets.chomp.capitalize
    print "Color: "
    @color = gets.chomp
    print "Mass in kilograms: "
    @mass_kg = gets.to_i
    print "Distance from its sun: "
    @distance_from_sun_km = gets.to_i
    puts "Please enter one fun fact about this planet."
    @fun_fact = gets.chomp

    return user_added_planet = Planet.new(@name, @color, @mass_kg, @distance_from_sun_km, @fun_fact)
    # add_planet(user_added_planet)
    # @planets << planet
    # return user_added_planet
    # puts "You added this planet: #{user_added_planet.name}"
  end
end
