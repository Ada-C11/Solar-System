require_relative "planet"

class SolarSystem

    attr_reader :planets, :star_name

    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end

    def add_planet(planet)
        @planets.push(planet)
    end

    def list_planets
        i = 0
        list = "Planets orbitting #{star_name}: "

        while i < @planets.length
            add_list = "\n#{i+1}.#{@planets[i].name }"
            list += add_list
            i += 1
        end

        return list
    end

    def find_planet_by_name(planet_name)
        desired_planet = @planets.select{|planet| planet.name.downcase == planet_name.downcase}
        if desired_planet.length == 1
            return desired_planet[0]
        elsif desired_planet.length > 1
            return desired_planet
        else 
            return "There is no planet with that name in this solar system!"
        end
    end

    def distance_between(first_planet, second_planet)
        found_first_planet = find_planet_by_name(first_planet)
        found_second_planet = find_planet_by_name(second_planet)
        distance = (found_first_planet.distance_from_sun_km - found_second_planet.distance_from_sun_km).abs
        return "#{distance} km"
    end
end
