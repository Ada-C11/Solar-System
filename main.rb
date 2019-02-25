require_relative "planet.rb"
def main 
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  mars = Planet.new('Mars', "red", 6.39e23, 2.279e8,'Mars is named after a mythological figure - the Roman god of war')
  puts mars.summary
end

main