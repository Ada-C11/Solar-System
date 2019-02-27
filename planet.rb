class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name: "", color: "", mass_kg: 0, distance_from_sun_km: 0, fun_fact: "")
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "The planet, #{@name} is #{@color} in color, its mass is #{@mass_kg}kg, has a distance of #{@distance_from_sun_km}km from sun, fun fact: #{@fun_fact}"
  end
end

ARIEL = Planet.new(name: "Ariel", color: "blue-ish", mass_kg: 6455783, distance_from_sun_km: 308546069, fun_fact: "Ariel has an extensive network of medical-related industries.")

LONDINIUM = Planet.new(name: "Londinium", color: "green-ish", mass_kg: 1236620, distance_from_sun_km: 1346380, fun_fact: "Londinium is where the Parliament is housed.")
