require_relative 'planet'
require_relative 'solar_system'

def main
  #... making default planets in list...
  venus = Planet.new(name: "Venus", color: 'purple', mass_kg: '3.88e10', distance_from_sun_km: '1.3e8', fun_fact: 'this planet is commonly associated with feminine energy.')

  earth = Planet.new(name: "Earth", color: 'blue-green', mass_kg: '5.972e24', distance_from_sun_km: '1.496e8', fun_fact: 'Only planet known to support life')

  pluto = Planet.new(name: "Pluto", color: 'icy-grey', mass_kg: '0.887e10', distance_from_sun_km: '15.3999e8', fun_fact: 'Pluto was recently debunked from the official planet list!')


  #instantiate my new solar system named sol
  sol_system = SolarSystem.new('Sol') 
  
  # adding planets to sol_sytem with add_planet method in solar_system.rb
  sol_system.add_planet(venus) 
  sol_system.add_planet(pluto)
  sol_system.add_planet(earth)

  list = sol_system.list_planets

  print "Hello and welcome to the \'#{sol_system.star_name}\' solar system."
  puts "\n 
    - If you would like to see a list of planets enter \'list\' or \'l\'.  
    - If you would like to learn more about an existing planet, enter enter it's name from the list of planets. 
    - If you would like to create a planet, enter 'generate'. 
    - Finally at any point if you want to abort the mission enter: exit or quit."
  
  running = true
  while running
    print "Input here: "
    planet_ask = gets.chomp.downcase
    #currently will only print out last valuse
    if running
      if ["list", "l"].include?(planet_ask)
        puts "Planets orbiting #{sol_system.star_name}\n"
        puts list
      elsif ["earth", "venus", "pluto"].include?(planet_ask)
        find_planet = sol_system.find_planet_by_name(planet_ask)
        puts find_planet[0].summary
      elsif planet_ask == 'generate'
        puts "Please enter the details of your new planet: "
        print "Name: " 
        new_name = gets.chomp
        print "Color: "
        new_color = gets.chomp
        print "Mass in kg: "
        mass = gets.chomp
        print "Distance from #{sol_system.star_name}: "
        distance = gets.chomp
        print "Cool facts about your planet: "
        fun_deets = gets.chomp
        new_planet = Planet.new(name: new_name, color: new_color, mass_kg: mass, distance_from_sun_km: distance, fun_fact: fun_deets )
        sol_system.add_planet(new_planet)
        p new_planet
      elsif ['exit', 'quit', 'n'].include?(planet_ask)
        puts "mission aborted!"
        running = false 
      end
    end

    puts "Would you like to perform another inquiry? enter y/n" 
    question = gets.chomp
    if question == 'y'
      running = true
    else
      running = false
    end
  end
end

main

