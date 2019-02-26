require "awesome_print"
require_relative "planet"
require_relative "solar_system"

def main
  cybertron = Planet.new("Cybertron", "Silver", 10234, 890890, "Autobots don't live there anymore - see Transformers")
  arrakis = Planet.new("Arrakis", "Orange", 52345234, 1243123, "It's not a planet of arrays - see Dune")
  solar_system = SolarSystem.new("sol")
  solar_system.add_planet(cybertron)
  solar_system.add_planet(arrakis)
  list = solar_system.list_planets
  puts list

  puts "So you want to find a planet, mmm... tell me the name, please?"
  planet_name = gets.chomp.capitalize
  found_planet = solar_system.find_planet_by_name(planet_name)

  puts found_planet
  puts found_planet.summary

  #   puts arrakis.name
  #   puts cybertron.fun_fact
  #   puts cybertron.summary
end

# NameError: uninitialized constant SolarSystem
# What does this error mean? What do you need to do to fix it?
# It means that the require_relative "solar_system" is missing. reference?
#

main

#---------------------
# Create two diferent instances of planet
# Print put some of the planet attributes
# Not necessary go simple
# #   information = [{name: "",
# #                   color: "",
# #                   mass_kg: 0,
# #                   distance_from_sun_km: 0,
# #                   fun_fact: ""}]
# #   information.each_with_index do |attribute, index|
# #     puts "Please enter the planet's #{attribute.keys}"
# #     information[index][attribute.keys] << gets.chomp
# #   end

#   planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
