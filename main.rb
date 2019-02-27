require_relative 'planet'
require_relative 'solar_system'

# This method should create two different instances of Planet and print out some 
# of their attributes.
def main
    solar_system = SolarSystem.new('Sol')

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new('Jupiter', 'reddish-brown', 1.898e27, 7.783e8, 'Cannot become a star')
    saturn = Planet.new('Saturn', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    uranus = Planet.new('Uranus', 'reddish-brown', 1.898e27, 7.783e8, 'Cannot become a star')
    neptune = Planet.new('Neptune', 'reddish-brown', 1.898e27, 7.783e8, 'Cannot become a star')

    solar_system.add_planet(earth)
    solar_system.add_planet(jupiter)
    solar_system.add_planet(saturn)
    solar_system.add_planet(uranus)
    solar_system.add_planet(neptune)

    puts "What would you like to do: list planets, planet details, add planet, or exit?"
    user_choice = gets.chomp.downcase

    while user_choice != "exit"
        if user_choice == "list planets"
            puts solar_system.list_planets
        elsif user_choice == "planet details"
            puts "What planet would you like details on?"
            planet_choice = gets.chomp.downcase
            found_planet = solar_system.find_planet_by_name(planet_choice)
            puts found_planet.summary
        elsif user_choice == "add planet"
            solar_system.new_planet
        else # maybe delete?
            puts "Please enter one of the following options: list planets, planet details, or exit!"
            user_choice = gets.chomp.downcase
        end
        puts "What would you like to do next: list planets, planet details, or exit?"
        user_choice = gets.chomp.downcase
    end
end

main
