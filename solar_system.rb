# Solar System 
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
    i = 0
    list = []
    @planets.each do |planet|
        list << "#{i += 1}. #{planet.name}"
    end
    puts "Planets orbiting #{star_name}:"
    return list
    end
    
    def find_planet_by_name(name)
        @planets.each do |planet|
            if planet.name == name.downcase 
                return planet 
            elsif planet.name != name.downcase
                puts "no related data found, please enter a listed planet"
                planet_details
            end
        end
    end 

    def planet_details 
        puts "Enter the planet you want a little more info of"
        user_input = gets.chomp.downcase

        planet_info = find_planet_by_name(user_input)
        return planet_info
    end

    def new_planet
        puts "We will need the following planet information:"

        puts "Planet name:"
        name = gets.chomp.downcase
        
        puts "Planet color:"
        color = gets.chomp.downcase

        puts "Planet Mass:"
        mass = gets.chomp.to_i

        puts "Planet Distance from the Sun:"
        distance_from_sun = gets.chomp

        puts "Planet Fun Fact:"
        fun_fact = gets.chomp_to_i

        new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)
        add_planet(new_planet)
        
    end
end






    
