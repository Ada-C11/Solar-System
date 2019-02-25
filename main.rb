require_relative "planet"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The densest planet in the solar system")
  venus = Planet.new("Venus", "red-brown", 4.867e24, 1.082e8, "Both the morning star and the evening star")

  puts earth.name
  puts venus.color
  puts venus.fun_fact
end

main
