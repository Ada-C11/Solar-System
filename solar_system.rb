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
    intro = "Planets orbiting #{star_name}\n"
    n = 0
    listing = @planets.map do |planet|
    "#{n+=1}. #{planet.name}"
    end
    return intro, listing
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

    return query
  end
end

