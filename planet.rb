# planet.rb
require "pry"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Let's learn about the planet #{name}! #{name} is #{color} in color. It weighs #{mass_kg} kgs and is #{distance_from_sun_km} kms from the sun. Here's a fun fact about #{name}: #{fun_fact}. Cool!"
  end
end
