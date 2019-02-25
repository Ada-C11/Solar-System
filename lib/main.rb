require_relative "planet"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  puts "#{earth.name} is the color #{earth.color}"

  saturn = Planet.new("Saturn", "brownish", 5, 2, "some fact")
  puts "#{saturn.name} has this fun fact: #{saturn.fun_fact}"
end

main
