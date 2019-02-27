require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it's the only planet known to support life")

  venus = Planet.new("Venus", "yellow", 4.867e24, 67.3e6, "40 spacecraft have explored Venus")

  mercury = Planet.new("Mercury", "blue", 3.285e23, 28.6e6, "kid-friendly")

  mars = Planet.new("Mars", "orange", 6.39e23, 141.7e6, "it has 2 moons")

  jupiter = Planet.new("Jupiter", "red", 1.89e27, 495.7e6, "it has more than 75 moons")

  saturn = Planet.new("Saturn", "brown", 5.68e26, 934.9e6, "it has 62 moons")

  uranus = Planet.new("Uranus", "blue", 8.68e25, 1.9e9, "it has 62 moons")

  neptune = Planet.new("Neptune", "purple", 1.024e26, 2.78e9, "it has 62 moons")
end

main
