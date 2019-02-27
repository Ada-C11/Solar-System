require_relative 'planet.rb'

class SolarSystem
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = Array.new
    end

    def add_planet(planet)
        @planets.each do |p|
            if p.name.casecmp(planet.name) == 0
                raise ArgumentError.new("Planet already exists")
            end
        end

        @planets << planet
    end

    def list_planets
        list = "Planets orbitting #{star_name}:\n"
        @planets.each_index { |i|
            list += "#{i + 1}. #{@planets[i].name}\n"
        }
        return list
    end

    def find_planet_by_name(name)
        @planets.each do |planet|
            if planet.name.casecmp(name) == 0
                return planet
            end
        end

        raise ArgumentError.new("There is no such planet #{name}")
    end

    def distance_between(planet1, planet2)
        distance = find_planet_by_name(planet1).distance_from_sun_km - find_planet_by_name(planet2).distance_from_sun_km
        return distance.abs
    end
end

