require 'faker'

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    if @mass_kg <= 0 || distance_from_sun_km <= 0
      raise ArgumentError, "Neither kilograms nor kilometers can be zero."
    end
  end

  def summary
    return
    "\n#{@name} has a #{@color} color and mass of #{@mass_kg}x10^24 kg." +
    "\nIt is #{@distance_from_sun_km}x10^6 km away from the sun." +
    "#{@fun_fact}."
  end
end

