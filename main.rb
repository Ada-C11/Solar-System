require_relative "planet"
require_relative "solar_system"
require "awesome_print"

def main
  #... making default planets in list...
  venus = Planet.new(name: "Venus", color: "purple", mass_kg: "3.88e10", distance_from_sun_km: "1.3e8", fun_fact: "this planet is commonly associated with feminine energy.")

  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: "5.972e24", distance_from_sun_km: "1.496e8", fun_fact: "Only planet known to support life")

  pluto = Planet.new(name: "Pluto", color: "icy-grey", mass_kg: "0.887e10", distance_from_sun_km: "15.3999e8", fun_fact: "Pluto was recently debunked from the official planet list!")

  #instantiate my new solar system named sol
  sol_system = SolarSystem.new("Sol")

  # adding planets to sol_sytem with add_planet method in solar_system.rb
  sol_system.add_planet(venus)
  sol_system.add_planet(pluto)
  sol_system.add_planet(earth)

  # list = sol_system.list_planets

  print "Hello and welcome to the \'#{sol_system.star_name}\' solar system."
  puts "\n 
    - If you would like to see a list of planets enter \'list\' or \'l\'.  
    - If you would like to learn more about an existing planet, enter 'summary'. 
    - If you would like to create a planet, enter 'generate', or 'add'. 
    - Finally at any point if you want to abort the mission enter: exit or quit."

  running = true
  loop_count = 0

  # planet_ask = "earth"
  # i = 0
  # while i < sol_system.list_planets.length
  #   if sol_system.list_planets[i].name == planet ask
  #     puts sol_system.list_planets[i].name
  #   end
  #   i += 1
  # # end

  #         find_planet = sol_system.find_planet_by_name(planet_ask)
  #         puts find_planet[0].summary
  # end

  while running
    if loop_count > 0
      t = Terminal::Table.new
      puts "Your options are:"
      t << ["summary", "list", "l", "add", "generate", "exit", "quit"]
      puts t
    end
    print "Input here: "
    planet_ask = gets.chomp.downcase
    #currently will only print out last valuse
    if running
      if planet_ask == "summary"
        puts "Enter name of planet"
        planet_name = gets.chomp.downcase
        find_planet = sol_system.find_planet_by_name(planet_name)
        puts find_planet.summary
      elsif ["list", "l"].include?(planet_ask)
        puts "Planets orbiting #{sol_system.star_name}"
        i = 0
        sol_system.list_planets.each { |n| ap "#{i += 1}. #{n.name}" }
      elsif planet_ask == "generate" || planet_ask == "add"
        sol_system.user_adds_planet
      elsif ["exit", "quit", "n"].include?(planet_ask)
        puts "mission aborted!"
        break
      end
    end
    loop_count += 1
    puts "Would you like to perform another inquiry? enter y/n"
    question = gets.chomp
    if question == "y"
      running = true
    else
      running = false
    end
  end
end

main
