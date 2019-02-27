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
    return "\n#{name} is a(n) #{color} planet with a mass of #{mass_kg} kg and is #{distance_from_sun_km} km from Blingy Star. Fun fact about #{name}: #{fun_fact}.
\n"
  end
end
