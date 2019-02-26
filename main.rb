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

  learn = true

  while learn

    puts "Hello and welcome to the \'#{sol_system.star_name}\' solar system."

    puts "If you would like to see a list of planets enter \'list\' or \'l\'.  If you would like to learn more about a planet enter enter it's name from the list of planets. If you want to abort the mission enter: exit or quit."
    planet_ask = gets.chomp
    
    if ["list", "l"].include?(planet_ask)
      puts list
    elsif ["earth", "venus", "pluto"].include?(planet_ask)
      find_planet = sol_system.find_planet_by_name(planet_ask)
      puts find_planet.each { |name| puts name.summary}
    end
    #   puts planet_ask
    # end
    learn = false
  end

end

main

