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
    return "#{@name}: #{@color} in color, mass: #{@mass_kg}kg, distance from sun: #{@distance_from_sun_km}km, fun fact: #{@fun_fact}"
  end
end

ARIEL = Planet.new("Ariel", "blue-ish", 6455783, 308546069, "Ariel has an extensive network of medical-related industries.")

LONDINIUM = Planet.new("Londinium", "green-ish", 1236620, 1346380, "Londinium is where the Parliament is housed.")
