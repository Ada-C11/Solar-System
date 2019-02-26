require_relative 'planet'

class SolarSystem
  #helper method to create readable but not re-writable instance variable. specified using symbols
  attr_reader :star_name, :planets 
  
  # constructor method
  def initialize star_name
    @star_name = star_name
    @planets = []
  end

  def add_planet planet
    @planets << planet
  end

  def list_planets
    n = 0
    listing = @planets.each do |planet|
    "#{n+=1}. #{planet.name}"
    end
    return listing
  end

  def user_adds_planet
    puts "Please enter the details of your new planet: "
        print "Name: " 
        new_name = gets.chomp
        print "Color: "
        new_color = gets.chomp
        print "Mass in kg: "
        mass = gets.chomp
        print "Distance from #{star_name}: "
        distance = gets.chomp
        print "Cool facts about your planet: "
        fun_deets = gets.chomp
        new_planet = Planet.new(name: new_name, color: new_color, mass_kg: mass, distance_from_sun_km: distance, fun_fact: fun_deets )
        add_planet(new_planet)
        puts "#{new_planet.name} has been added to Sol system"
  end
  
  def find_planet_by_name name_query
    not_found = false
    query = []
    planets.each do |element|
      if element.name.downcase == name_query.downcase
        not_found = true
        query << element
      end
    end

    if !not_found
      raise ArgumentError, "This planet ain't here!"
    end

    return query #an array of elements...
  end
end