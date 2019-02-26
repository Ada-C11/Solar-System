require_relative 'planet'
require_relative 'solar_system'

def main
  #... do stuff with planets...
  venus = Planet.new(name: "Venus", color: 'purple', mass_kg: '3.88e10', distance_from_sun_km: '1.3e8', fun_fact: 'this planet is commonly associated with feminine energy.')

  earth = Planet.new(name: "Earth", color: 'blue-green', mass_kg: '5.972e24', distance_from_sun_km: '1.496e8', fun_fact: 'Only planet known to support life')

  pluto = Planet.new(name: "Pluto", color: 'icy-grey', mass_kg: '0.887e10', distance_from_sun_km: '15.3999e8', fun_fact: 'Pluto was recently debunked from the official planet list!')

  # pluto_2 = Planet.new(name: "Pluto", color: 'icy-grey', mass_kg: '0.887e10', distance_from_sun_km: '15.3999e8', fun_fact: 'Pluto recently was debunked from the official planet list!')

  puts venus.summary 
  puts pluto.summary

  #instantiate my new solar system named sol
  sol_system = SolarSystem.new('Sol') 

  # adding planets to sol_sytem with add_planet method in solar_system.rb
  sol_system.add_planet(venus) 
  sol_system.add_planet(pluto)
  # sol_system.add_planet(pluto_2)

  list = sol_system.list_planets
  puts list

  # find_planet = sol_system.find_planet_by_name('pluto')
  
  # find_planet.each { |name| puts name.summary }
end

main