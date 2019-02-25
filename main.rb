require_relative 'planet.rb'

def main
  fantasy_world = Planet.new("Fantasy World", "yellow", 5.972e24, 1.496e8, 
    "The Fantasy World is a planet inhabited by humans,\nas well as other 
    beings, in a medieval-themed setting.")
  alphabetrium = Planet.new("Alphabetrium", "blue", 3.000e00, 6.000e8, 
    "It's the homeworld of Ice-T, an exiled native of Alphabetrium who became a well known rapper on Earth.")
  #earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts alphabetrium.summary
end

main