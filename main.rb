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

    puts "Welcome to our solar system! Type 'list planets' if you would like to see a list of planets that orbit the #{solar_system.star_name}. Type 'planet details' if you would like to learn more about a planet. Type 'add planet' to add a planet. Type 'planet distances' to find the distance between two planets. Type 'exit' if you would like to exit. "
    input = gets.chomp.to_s
    until input == "exit"
        if input == "list planets"
            puts solar_system.list_planets
        elsif input == "planet details"
            puts "Please enter the name of the planet you would like to learn more about: "
                planet_input = gets.chomp.to_s
                until planet_input == "exit"
                    planet_of_interest = solar_system.find_planet_by_name(planet_input)
                    planet_names = solar_system.planets.map{|planet| planet.name.downcase}
                    if planet_names.include?(planet_input.downcase) == true
                        puts planet_of_interest.summary
                        puts "Please type in the name of another planet or type exit to return to previous options"
                    else
                        puts "That planet is not in our solar system! Please type in a name of another planet or type 'exit' to return to previous options."
                    end    
                        planet_input = gets.chomp.to_s
                end
        elsif input == "planet distances"

            puts "To find the distance between two planets, please enter the name of the first planet:"
            first = gets.chomp.to_s
            planet_names = solar_system.planets.map{|planet| planet.name.downcase}
            until planet_names.include?(first.downcase) == true
                puts "That planet is not in our solar system! Please type in a name of another planet."
                first = gets.chomp.to_s
            end
            puts "Please enter the name of the second planet:"
            second = gets.chomp.to_s
            until planet_names.include?(second.downcase) == true
                puts "That planet is not in our solar system! Please type in a name of another planet."
                second = gets.chomp.to_s
            end

            puts solar_system.distance_between(first, second)

        elsif input == "add planet"
            
            puts "Thank you for helping us provide accurate information about our solar system community. What is the name of the planet you would like to add?"
            new_planet_name = gets.chomp.to_s
            puts "What is the color of the planet?"
            new_planet_color = gets.chomp.to_s
            puts "What is the mass in kg of the planet?"
            new_planet_mass = gets.chomp.to_i
            until new_planet_mass > 0
                puts "Please enter a positve integer for mass!"
                new_planet_mass = gets.chomp.to_i
            end
            puts "What is the distance in km of the planet from the #{solar_system.star_name}?"
            new_planet_distance = gets.chomp.to_i
            until new_planet_distance > 0
                puts "Please enter a positve integer for distance!"
                new_planet_distance = gets.chomp.to_i
            end
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

        puts "What would you like to do now? List planets, planet details, add planet, planet distances, or exit?"
        input = gets.chomp.to_s
    end

    puts "Thank you for visiting our solar system!"

end

main
