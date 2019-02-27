# Wave 2
require_relative 'planet.rb'

class SolarSystem
  attr_reader :star_name, :planets
  # Constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  # Take an instance of Planet as a parameter and add it to the list of planets.exit
  def add_planet(planet)
    # planets = @planets.map { |i| i.name.downcase }
    if @planets.include?(planet.name.downcase)
      raise ArgumentError.new("Planet already exists. A solar system cannot have duplicate planets")
    end
    @planets.push(planet)
  end

  puts 

  def planet_list
    @planets.each do |planet|
      # return planet # returns the planet at index 0 and then exits because return breaks a method
      next
    end
    return @planets
  end

    def list_planets
      list = ""
      for i in (0..@planets.length - 1)
        list += "\n#{i + 1}. #{@planets[i].name}"
      end
      return list
    end

    def find_planet_by_name(name)
      @planets.each do |planet|
          if planet.name.downcase == name.downcase
              return planet
          end
      end
      return nil
    end

    def discovered_planet

      puts "What is the name of your planet?"
      name = gets.chomp.capitalize
      puts "What is the color of your planet?"
      color = gets.chomp.downcase
      puts "How much does your planet weigh in kg?"
      mass_kg = gets.chomp.to_f
      puts "How far is your planet from the sun in km?"
      distance_from_sun_km = gets.chomp.to_f
      puts "What is a fun fact about your planet?"
      fun_fact = gets.chomp.downcase

      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      add_planet(new_planet)

      # puts new_planet.name
    end
end