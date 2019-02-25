require_relative "planet"

def main
  waffles = Planet.new("Waffles", "\'maple syrup\' brown", 3.555e23, 1.273e12, "It is the only known " \
  "planet to be smothered in fried chicken")
  cuddles = Planet.new("Cuddles", "soft velvet grey", 9.973e30, 0.000002, "This planet loves the sun so much " \
  "that it can\'t get close enough to it!")

  puts waffles.summary
  puts cuddles.summary
end

main
