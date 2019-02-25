require_relative "planet"

def main
  waffles = Planet.new("Waffles", "maple syrup brown", 3.555e23, 1.273e10, 'Only known planet to be \
            smothered in fried chicken')
  cuddles = Planet.new("Cuddles", "soft velvet grey", 9.973e30, 1.5, 'This planet loves the sun so much \
            that it can\'t get close enough to it!')
end

main
