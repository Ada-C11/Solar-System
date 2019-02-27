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
            if planet.name.downcase == name.downcase 
                return planet 
            end 
        end
    end 

end





    
