# main.rb
require_relative 'planet'

def main

mercury = Planet.new('Mercury', 'dark-gray', 3.285e23, 57.91e8, 'First rock from the sun')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  

puts earth.name
puts earth.fun_fact 

puts mercury.summary

end

main