require_relative "planet.rb"

def main
  mercury = Planet.new("Mercury", "gray", 0.330, 57909227, "It's hot, but not too hot for ice")
  puts mercury.summary
  venus = Planet.new("Venus", "pale yellow", 4.87, 108209475, "Doesn’t have any moons, and we aren’t sure why.")
  puts venus.summary
end

main
