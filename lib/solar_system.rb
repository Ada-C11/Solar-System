require_relative 'planet.rb'
require "set"

class SolarSystem
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = Array.new
        @name_set = Set.new
    end

    def add_planet(planet)
        if @name_set.include?(planet)
            raise ArgumentError.new("Planet already exists")
        end

        @planets << planet
        @name_set << planet.name
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
        if !@name_set.include?(search_name)
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

