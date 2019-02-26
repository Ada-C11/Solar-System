# WAVE 1
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  # Constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # Summary
  def summary
    return "#{self.name} is the third planet and is #{self.distance_from_sun_km} kilometers away from the Sun. It's color is #{self.color}. It's mass is #{self.mass_kg} kilograms and it is the #{self.fun_fact}!"
  end
end