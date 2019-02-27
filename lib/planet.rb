class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    if mass_kg <= 0
      raise ArgumentError, "Planet mass cannot be less than or equal to 0 kg."
    end
    @distance_from_sun_km = distance_from_sun_km
    if distance_from_sun_km <= 0
      raise ArgumentError, "Planet distane from Sun cannot be less than or equal to 0 km."
    end
    @fun_fact = fun_fact
  end

  def summary
    return "\nThe planet #{name} is #{color} in color. It weighs #{mass_kg} kg and is #{distance_from_sun_km} km from the Sun. Here is a fun fact about #{name}: #{fun_fact}!"
  end
end
