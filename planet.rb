cdclass Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  def manifest_spheres
    @planetary_array = []
  end
  def summary
    return "#{@name} has a #{@color} color and mass of #{@mass_kg}. It is #{@distance_from_sun_km} away from the sun and next time you're at a cool party, you should definitely mention that #{@fun_fact}"
  end
end
