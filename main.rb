require_relative "planet.rb"

def main
  jupiter = Planet.new("Jupiter", "reddish", 578944636, 75436.32, "This planet has been a planet since the big bang.")

  saturn = Planet.new("Saturn", "multi-colored striped", 39435845, 222343, "This planet has rings of gas, dust and rock.")

  return "#{jupiter.summary} #{saturn.summary}"
end

puts main
