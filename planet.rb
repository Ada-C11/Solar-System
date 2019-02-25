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
    @summary = summary
    return summary
  end

  def summary
    return "The planet #{self.name} is #{self.color} in color, has a mass of #{self.mass_kg}kg, and is #{self.distance_from_sun_km}km from the sun. A fun fact about your planet: #{self.fun_fact}"
  end
end

# instantiate each planet here:
earth = Planet.new(name: "Earth", color: 'blue-green', mass_kg: '5.972e24', distance_from_sun_km: '1.496e8', fun_fact: 'Only planet known to support life')

