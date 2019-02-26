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
        list = ""
        @planets.each_index do |index|
            list += "\n#{index + 1}. #{@planets[index].name}"
        end
        return planet_results + list
    end

    def find_planet_by_name(name)
        @planets.each do |planet|
            if planet.name.downcase == name.downcase
                return planet
            end
        end
        return nil
    end
end
