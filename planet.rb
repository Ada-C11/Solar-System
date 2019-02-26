class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    # if @mass_kg < 0
    #   raise ArgumentError, "Mass must be > 0."
    # end
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{name} is a(n) #{color} planet with a mass of #{mass_kg} kg and is #{distance_from_sun_km} km from the sun. Fun fact about #{name}: #{fun_fact}."
  end
end
