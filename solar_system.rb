class SolarSystem 
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end

    def add_planets(planet)
        @planets << planet
    end

    def list_planets
        list = @planets.each_with_index.map do |planet, i|
            "#{i +1}. #{planet.name}."
        end
    return "Planets orbiting #{@star_name}: \n#{list.join("\n")}"
    end

    def find_planet_by_name(planet_name)
        return @planets.find do |planet|
            planet.name == planet_name.capitalize
        end
    end
    
    def create_planet
        puts "To make a new planet, enter planet details"
        puts "enter the name" 
        new_name = gets.chomp
        puts "what color is the planet?"
        new_color_planet = gets.chomp
        puts "whats the mass in kg"
        new_mass_kg = gets.chomp.to_f
        puts "what is the distance from the sun"
        new_distance_from_sun = gets.chomp.to_i
        puts "tell me your planets fun fact"
        new_fun_fact = gets.chomp

    user_planet = Planet.new(new_name, new_color_planet,new_mass_kg, new_distance_from_sun, new_fun_fact)
    add_planets(user_planet)
    end 

    
end
#push!