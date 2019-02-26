require_relative 'planet.rb'

class SolarSystem
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = Array.new
    end

    def add_planet(planet)
        if @planets.include?(planet)
            raise ArgumentError.new("Planet already exists")
        end

        @planets << planet
    end

    def list_planets
        result = "Planets orbitting #{star_name}:"
        list = ""
        @planets.each_index { |i|
            list += "\n#{i + 1}. #{@planets[i].name}"
        }
        return result + list
    end

    def find_planet_by_name(search_name)
        is_included = @planets.any? { |planet|
            planet.name == search_name
        }

        if !is_included
            raise ArgumentError.new("There is no such planet")
        end

        @planets.each do |element|
            if element.name == search_name.capitalize
                return element
            end
        end
    end

    def distance_between(planet1, planet2)
        distance = find_planet_by_name(planet1).distance_from_sun_km - find_planet_by_name(planet2).distance_from_sun_km
        return distance.abs
    end
end

