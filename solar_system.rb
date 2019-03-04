# Wave 2
# In this wave you will build a second class, SolarSystem, which is responsible for 
# keeping track of a collection of instances of Planet.

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
        planet_results = "Planets orbitting #{star_name}: "
        @planets.each_index do |index|
            planet_results += "\n#{index + 1}. #{@planets[index].name}"
        end
        return planet_results
    end

    def find_planet_by_name(name)
        @planets.each do |planet|
            if planet.name.downcase == name.downcase
                return planet
            end
        end
        return nil
    end

    def new_planet
        puts "What is the name of your planet?"
        name = gets.chomp.capitalize
        puts "What is the color of your planet?"
        color = gets.chomp.downcase
        puts "How much does your planet weigh in kg?"
        mass_kg = gets.chomp
        puts "How far is your planet from the sun in km?"
        distance_from_sun_kg = gets.chomp
        puts "What is a fun fact about your planet?"
        fun_fact = gets.chomp.downcase

        new_planet = Planet.new(name, color, mass_kg, distance_from_sun_kg,fun_fact)
        add_planet(new_planet)
    end
end
