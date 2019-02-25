class Planet
  def initialize(name: nil, color: nil, mass_kg: nil, distance_from_sun_km: nil, fun_fact: nil)
    if mass_kg <= 0
      raise ArgumentError, "Mass must be greater than 0: given #{mass_kg}"
    elsif distance_from_sun_km <= 0
      raise ArgumentError, "Distance from sun must be greater than 0: given #{distance_from_sun_km}"
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{@name} is #{@color}, has a mass of #{@mass_kg} kg, and is #{@distance_from_sun_km} km from the sun. Fun fact: #{@fun_fact}!"
  end
end
