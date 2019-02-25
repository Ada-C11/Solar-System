
require_relative "planet"
require "terminal-table"

def main
  earth = Planet.new("Earth", "turquoise", 5.97e34, 149.6e6, "We have tacos here")
  mars = Planet.new("Mars", "red", 0.642e24, 227.9e6, "Named after Mars, the Roman god of war")
  
  puts earth.summary
  puts mars.summary
end

main
