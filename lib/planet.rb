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
    return "Planet #{name} has the color of #{color} with the mass of #{mass_kg} kgs. This planet is #{distance_from_sun_km} km from the sun. A fun-fact about this planet is: #{fun_fact}"
  end
end
