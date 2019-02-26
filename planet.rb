class Planet
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    mass_kg.class != Integer || mass_kg < 0 ? @mass_kg = 0 : @mass_kg = mass_kg
    distance_from_the_sun_km.class != Integer || distance_from_the_sun_km < 0 ? @distance_from_the_sun_km = 0 : @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  def summary
    summary = "Planet name: #{@name} \nColor: #{@color} \nWeight: #{@mass_kg} \nDistance from sun: #{@distance_from_the_sun_km} \nFun Fact: #{@fun_fact}"

    return summary
  end
end
