class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    unless mass_kg > 0
      raise ArgumentError, "Mass must be greater than zero."
    end

    unless distance_from_sun_km > 0
      raise ArgumentError, "Distance from Sun must be greater than zero."
    end
  end

  def summary
    return "#{name} is #{color}. #{fun_fact} Its mass is #{mass_kg} kg and it is #{distance_from_sun_km} km from the sun."
  end
end
