# wave 1
require 'pry'
require 'colorize'

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize (name: "Planet", color: "Color", mass_kg: "Mass in Kg", distance_from_sun_km: "Distance in km", fun_fact: "This is a fun fact")
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    puts "Hello"
  end
end

earth = Planet.new(name: "Earth", color: 'blue-green', mass_kg: '5.972e24', distance_from_sun_km: '1.496e8', fun_fact: 'Only planet known to support life')

puts earth.color


