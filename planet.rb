require 'terminal-table'
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new("Both mass_kg and distance_from_sun_km must be a number that is greater than 0") if mass_kg.zero? || distance_from_sun_km.zero?
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "The planet name is #{@name}. Color of the planet is #{@color}. Planet weight is #{@mass_kg} kg. Distance from the sun is #{@distance_from_sun_km} km. #{@fun_fact}."
  end
end
