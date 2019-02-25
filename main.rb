require_relative 'planet'
require_relative 'solar_system'

def main
  #... do stuff with planets...
  venus = Planet.new(name: "Venus", color: 'purple', mass_kg: '3.88e10', distance_from_sun_km: '1.3e8', fun_fact: 'this planet is commonly associated with feminine energy.')

  pluto = Planet.new(name: "Pluto", color: 'icy-grey', mass_kg: '0.887e10', distance_from_sun_km: '15.3999e8', fun_fact: 'Pluto was recently debunked from the official planet list!')

  # puts venus.summary 
  # puts pluto.summary

  #instantiate my new solar system named sol
  sol_system = SolarSystem.new('Sol') 

  # adding planets to sol_sytem with add_planet method in solar_system.rb
  sol_system.add_planet(venus) 
  sol_system.add_planet(pluto)

  list = sol_system.list_planets
  puts list

  find_planet = sol_system.find_planet_by_name('venus')
  find_planet_2 = sol_system.find_planet_by_name('pluto')
  
  p find_planet.name
  p find_planet_2.summary
end

main