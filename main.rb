require_relative "planet"
require_relative "solar_system"

def main

    solar_system = SolarSystem.new("Sun")
    saturn = Planet.new("Saturn", "red", 1000, 10000, "Saturn has hella rings.")
    solar_system.add_planet(saturn)
    earth = Planet.new("Earth", "blue", 100, 10, "Earth is currently being destroyed by ungrateful humans.")
    solar_system.add_planet(earth)
    planet_niv = Planet.new("Planet Niv", "lavender", 510329, 6333, "Planet Niv is currently inhabited by aliens that are fiercly resisting human colonization by destroying all human satelites and spacecrafts.")
    solar_system.add_planet(planet_niv)

    puts "Welcome to our solar system! Type 'list planets' if you would like to see a list of planets that orbit the #{solar_system.star_name}. Type 'exit' if you would like to exit."
    input = gets.chomp.to_s
    until input == "exit"
        if input == "list planets"
            puts solar_system.list_planets
        elsif input == "planet details"
            puts "Please enter the name of the planet you would like to learn more about: "
                planet_input = gets.chomp.to_s
                until planet_input == "exit"
                    planet_of_interest = solar_system.find_planet_by_name(planet_input)
                    puts planet_of_interest.summary
                    puts "Please type in the name of another planet or exit"
                    planet_input = gets.chomp.to_s
                end
        elsif input == "exit"
            break
        else
            puts "Please put one of the options!"
        end

        puts "What would you like to do next? List planets, planet details, or exit?"
        input = gets.chomp.to_s
    end

    puts "Thank you for visiting our solar system!"

end

main
