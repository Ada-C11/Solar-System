# WAVE 1
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  # Constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    while mass_kg <= 0
      raise ArgumentError.new("Planet mass cannot be less than or equal to 0")
    end

    while distance_from_sun_km <= 0
      raise ArgumentError.new("Distance from sun cannot be less than or equal to 0. There would be no planet left!")
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # Summary
  def summary
    return "#{self.name} is #{self.distance_from_sun_km} kilometers away from the Sun. It's color is #{self.color}. It's mass is #{self.mass_kg} kilograms and  #{self.fun_fact}!"
  end
end