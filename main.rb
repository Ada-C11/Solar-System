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

    puts "Welcome to our solar system! Type 'list planets' if you would like to see a list of planets that orbit the #{solar_system.star_name}. Type 'add planet' to add a planet. Type 'exit' if you would like to exit. "
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
                    puts "Please type in the name of another planet or type exit to return to previous options"
                    planet_input = gets.chomp.to_s
                end
        elsif input == "add planet"
            
            puts "Thank you for helping us provide accurate information about our solar system community. What is the name of the planet you would like to add?"
            new_planet_name = gets.chomp.to_s
            puts "What is the color of the planet?"
            new_planet_color = gets.chomp.to_s
            puts "What is the mass in kg of the planet?"
            new_planet_mass = gets.chomp.to_i
            puts "What is the distance in km of the planet from the #{solar_system.star_name}?"
            new_planet_distance = gets.chomp.to_i
            puts "What is a fun fact about the planet?"
            new_planet_fact = gets.chomp.to_s

            new_planet = Planet.new("#{new_planet_name}", "#{new_planet_color}", new_planet_mass, new_planet_distance, "#{new_planet_fact}")
            solar_system.add_planet(new_planet)

            puts new_planet.summary

        elsif input == "exit"
            break
        else
            puts "Please put one of the options!"
        end

        puts "What would you like to do now? List planets, planet details, add planet, or exit?"
        input = gets.chomp.to_s
    end

    puts "Thank you for visiting our solar system!"

end

main
