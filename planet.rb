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
    return "The planet called #{@name} is #{@color}. Its planetary mass is #{@mass_kg} kg and it is #{@distance_from_sun_km} km from the sun. Here's a fun fact about #{@name}: #{fun_fact}."
  end
end
