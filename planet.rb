class Planet
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "The planet name is #{@name}. Color of the planet is #{@color}. Planet weight is #{@mass_kg} kg. Distance from the sun is #{@distance_from_sun_km} km. #{@fun_fact}."
  end
end

# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')