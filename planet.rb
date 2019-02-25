class Planet
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  def summary
    return "Planet name: #{@name}", "Color: #{@color}", "Weight: #{@mass_kg}", "Distance from sun: #{@distance_from_the_sun_km}", "Fun Fact: #{@fun_fact}"
  end
end
