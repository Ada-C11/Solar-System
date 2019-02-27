# main.rb
require_relative 'Planet'

def main  
   earth = Planet.new('earth', 'blue-green', '5.972e24', '1.496e8', 'only planet known to support life')
   puts earth.summary
   mars = Planet.new('mars', 'reddish-brown','‎0.64171','141.6 million mi','it has the longest rotation period, rotates in the opposite direction to most other planets')
   puts mars.summary
   
end

main
