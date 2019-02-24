require_relative "planet"

def main
  jupiter = Planet.new("Jupiter", "multicolor", "1.89e27", "7.78e8", "Has more than 75 moons!")
  mars = Planet.new("Mars", "red", "6.41e23", "2.27e8", "Had water in the Ancient Past!")
  puts jupiter.color
  puts mars.fun_fact
  puts mars.summary
end

main
