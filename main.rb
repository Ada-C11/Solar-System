
require_relative "planet"

def main
  mercury = Planet.new("Mercury", "gray", 3.285 * 10 ** 23, 57.91 * 10 ** 6, "is the smallest of the eight planets in our solar system")
  venus = Planet.new("Venus", "pale yellow", 4.867 * 10 ** 24, 108.2 * 10 ** 6, "is the second brightest natural object in the sky")

  puts mercury.summary
  puts venus.summary
end

main
