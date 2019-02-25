class Planet
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact
end

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

puts earth.name
# => Earth
puts earth.fun_fact
# => Only planet known to support life

earth.color = "pink"
# => NoMethodError: undefined method `color=' for #<Planet:0x00007fcfba04c130>
# => Did you mean?  color
