require_relative "planet"

def main
  earth = Planet.new("Earth",
                     "blue",
                     5.972e24,
                     1.496e8,
                     "We live here! :)")
  mars = Planet.new("Mars",
                    "red",
                    6.39e23,
                    2.279e8,
                    "Opportunity explored the surface of Mars for 14 years!")
  puts earth.summary
  puts mars.summary
end

main
