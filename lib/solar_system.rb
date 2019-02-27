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
    list = "\nPlanets orbiting #{star_name}"

    @planets.each_index do |i|
      list += "\n#{i + 1}. #{@planets[i].name}"
    end

    return list
  end

  def find_planet_by_name(name)
    return @planets.find do |planet|
             planet.name.downcase == name.downcase
           end
  end

  def planet_details
    print "\nWhat planet would you like to know about?: "
    planet_choice = gets.chomp
    until planet_choice != ""
      print "What planet would you like to know about?: "
      planet_choice = gets.chomp
    end

    while find_planet_by_name(planet_choice) == nil
      puts "Sorry, that's not a valid planet option."
      print "What planet would you like to know about?: "
      planet_choice = gets.chomp
    end

    found_planet = find_planet_by_name(planet_choice)
    puts found_planet.summary
  end

  def new_planet
    puts "\nAlright, tell me a bit about your planet."

    print "Enter a name for your planet: "
    planet_name = gets.chomp
    until planet_name != ""
      print "Enter a name for your planet: "
      planet_name = gets.chomp
    end

    print "Enter a color for your planet: "
    planet_color = gets.chomp
    until planet_color != ""
      print "Enter a color for your planet: "
      planet_color = gets.chomp
    end

    print "Enter the mass of your planet in kg: "
    planet_mass = gets.chomp.to_i
    until planet_mass > 0
      print "Enter the mass of your planet in kg: "
      planet_mass = gets.chomp.to_i
    end

    print "Enter the distance of your planet from the sun in km: "
    planet_distance = gets.chomp.to_i
    until planet_distance > 0
      print "Enter the distance of your planet from the sun in km: "
      planet_distance = gets.chomp.to_i
    end

    print "Enter a fun fact about your planet: "
    planet_fact = gets.chomp
    until planet_fact != ""
      print "Enter a fun fact about your planet: "
      planet_face = gets.chomp
    end

    user_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
    add_planet(user_planet)
  end
end
