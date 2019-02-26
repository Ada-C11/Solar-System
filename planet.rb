class Planet
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
    puts "\n#{@name} has a #{@color} color and mass of #{@mass_kg}x10^24 kg."
    puts "It is #{@distance_from_sun_km}x10^6 km away from the sun."
    puts "#{@fun_fact}."
  end
end
