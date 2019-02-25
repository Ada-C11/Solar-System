require_relative 'planets.rb'

def main
  #should create two different instances of Planet and print out some of their attributes

  @sparta = Planet.new('Sparta', 'red', 4.294e13, 1.325e2, 'full of aggressive aliens')

  @venus = Planet.new('Venus', 'pink', 5.294e24, 2.493e6, 'home planet of the goddess of love')


  puts @sparta.summary

  puts @venus.summary
end

main
