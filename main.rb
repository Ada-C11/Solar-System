require_relative "planet"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49638, "houses these things called humans")

  mars = Planet.new("Mars", "scary-red", 4.930e24, 0.43523, "cool fact about mars")
end

main
