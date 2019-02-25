require_relative "planet"

def main
  mars = Planet.new("Mars", "Red", "30", "100 million", "mentioned in passing in Octavia Butler's Trilogy, 'Lilith's Brood.'")
  pluto = Planet.new("Pluto", "Brown", "100", "300 million", "is disgraced.")
  puts mars.summary
  puts pluto.summary
end

main
