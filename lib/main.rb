require_relative 'planet.rb'
require_relative 'solar_system.rb'

def build_solar_system
    solar_system = SolarSystem.new("Sun")
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.4171e23, 2.29e8, 'Mars has two moons called Phobos and Deimos')
    mercury = Planet.new('Mercury', 'white', 3.3022e23, 6.98169e7, 'Mercury is the smallest planet in the solar system')
    jupiter = Planet.new('Jupiter', 'orange', 1.8982e27, 7.79e8, 'Jupiter is the largest planet in the solar system')
    venus = Planet.new('Venus', 'yellow', 4.8675e24, 1.082e8, 'Venus has the longest rotation period of any planet in the Solar System')
    uranus = Planet.new('Uranus', 'baby blue', 8.6810e25, 2.75e9, 'Uranus is named after the Greek mythological figure Ouranos, the God of the sky')
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    solar_system.add_planet(mercury)
    solar_system.add_planet(jupiter)
    solar_system.add_planet(venus)
    solar_system.add_planet(uranus)
    return solar_system
end

def ask_planet_details(solar_system)
    puts "Which planet do you want to learn about?"
    puts "#{solar_system.list_planets}"
    input_planet = gets.chomp
    puts "#{solar_system.find_planet_by_name(input_planet).summary}"
end

def add_new_planet(solar_system)
    puts "What is the name of the planet you want to add?"
    planet_name = gets.chomp
    
    puts "What is the color of your new planet?"
    planet_color = gets.chomp

    puts "What is the mass of your new planet?"
    planet_mass = gets.chomp.to_i

    puts "How far is your new planet from the Sun?"
    planet_distance = gets.chomp.to_i

    puts "Please add some fun facts about your new planet"
    planet_fact = gets.chomp

    new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
    solar_system.add_planet(new_planet)
    puts "Congratulations! You completed adding a new planet"
end

def find_distance_between(solar_system)
    puts "What is the name of the first planet?"
    first_planet = gets.chomp
    puts "What is the name of the second planet?"
    second_planet = gets.chomp
    puts "The distance between #{first_planet} and #{second_planet} is #{solar_system.distance_between(first_planet, second_planet)} km"
end

def main
    sun = build_solar_system

    options = {
        1 => "List planets", 
        2 => "Planet details", 
        3 => "Add a planet", 
        4 => "Find distance between two planets", 
        5 => "Exit"
    }
    questions = "What do you want to do next?\n"
    options.each { |key, value|
        questions += "#{key}. #{value}\n"
    }
    
    while true
        puts questions
        input = gets.chomp.downcase
        case input
        when "exit", "5"
            puts "Goodbye"
            return
        when "list planets", "1"
            puts "#{sun.list_planets}"
        when "planet details", "2"
            ask_planet_details(sun)
        when "add a planet", "3"
            add_new_planet(sun)
        when "find distance between two planets", "4"
            find_distance_between(sun)
        else
            puts "You chose an invalid option. Please choose again"
        end
    end
end

main