

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
    return "#{name}: is the color #{color}, weighs #{mass_kg}kg, and is #{distance_from_sun_km}km from the sun. Fun fact: #{fun_fact} "
  end
end

earth = Planet.new("Earth", "green", 100.25, 5000, "I live here!")
