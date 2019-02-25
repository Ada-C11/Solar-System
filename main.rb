require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  rick_morty = SolarSystem.new('Rick and Morty')

  fantasy_world = Planet.new("Fantasy World", "yellow", 5.972e24, 1.496e8, 
    "The Fantasy World is a planet inhabited by humans,\nas well as other 
    beings, in a medieval-themed setting.")
  alphabetrium = Planet.new("Alphabetrium", "blue", 3.000e00, 6.000e8, 
    "It's the homeworld of Ice-T, an exiled native of Alphabetrium who became a well known rapper on Earth.")
  #earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  #puts alphabetrium.summary

  
  rick_morty.add_planet(fantasy_world)
  rick_morty.add_planet(alphabetrium)

  list = rick_morty.list_planets
  #puts list

  found_planet = rick_morty.find_planet_by_name('Alphabetrium')
  puts found_planet
  puts found_planet.summary

  #puts found_planet.summary

end

main