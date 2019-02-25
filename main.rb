require_relative 'planet'

# This method should create two different instances of Planet and print out some 
# of their attributes.
def main
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new('Jupiter', 'reddish-brown', 1.898e27, 7.783e8, 'Cannot become a star')
end

puts main.summary