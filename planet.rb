class Planet
  attr_reader :name, :color, :mass_kg, 
  :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, 
  distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Name: #{@name}\t Color: #{@color}\t Mass in kg: #{@mass_kg}\t Distance from the sun in km: #{@distance_from_sun_km}\nFun fact: #{@fun_fact}"
  end

end

# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# puts earth.name