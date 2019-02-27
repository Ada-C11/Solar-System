require_relative "main"
require_relative "solar_system"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :twang_level, :likelihood_to_be_loved_by_yanks

  def initialize(name, color, mass, distance, fun_fact, twang_level, likelihood_to_be_loved_by_yanks)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @twang_level = twang_level
    @likelihood_to_be_loved_by_yanks = likelihood_to_be_loved_by_yanks
    if mass <= 0
      return raise ArgumentError, "Planet mass must be larger than 0"
    end
    if distance <= 0
      return raise ArgumentError, "Planet distance must be larger than 0"
    end
  end

  def summary
    return "The planet #{@name} is the color #{@color} has a mass of #{@mass} kg, and is #{@distance_from_sun_km} km from the sun. 
    It #{@fun_fact}, is know to have a twang level of #{@twang_level} out of 5, and is #{@likelihood_to_be_loved_by_yanks}% likely 
    to be loved by out-of-towners visiting the galaxy of Nashville for a bachelor or bachelorette party, never to return again."
  end
end
