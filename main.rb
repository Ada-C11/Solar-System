#main.rb
require_relative "planet"

def main
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun: 1.496e8, fun_fact: "Has llamas living on it")

  mars = Planet.new(name: "Mars", color: "red", mass_kg: 6.39e23, distance_from_sun: 2.29e8, fun_fact: "Named after the Roman god of war")

  puts earth.summary
  puts mars.summary
end

main
