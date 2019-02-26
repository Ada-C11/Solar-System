require_relative 'planet'
require_relative 'solar_system'

def main
p1 = Planet.new("Plutern", "basil green", 494, 1209, "Plutern was the first planet ever recorded by the process of mechanical scopeometry")
p2 = Planet.new("Eantune", "yolky", 332, 785, "Eantune represents simulacrity in the astrological divination system of the people of Plutern")
solar_system = SolarSystem.new('Sun 4')
solar_system.add_planet(p1)
solar_system.add_planet(p2)
list = solar_system.list_planets
found_planet = solar_system.find_planet_by_name("eantune")
puts list
puts found_planet
puts found_planet.summary
end

main
# def greeting
# end

# def manifest_spheres
# end

# def user_chooser
# end

# def planet_picker
# end

def adventure
end
