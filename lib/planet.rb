class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize
    @color = color.downcase
    @mass_kg = mass_kg > 0 ? mass_kg : (raise ArgumentError.new("Mass must be greater than 0."))
    @distance_from_sun_km = distance_from_sun_km > 0 ? distance_from_sun_km : (raise ArgumentError.new("Distance must be greater than 0."))
    @fun_fact = fun_fact.downcase
  end

  def summary
    return "\n#{name} is a #{color} planet that is #{distance_from_sun_km} km from it's sun. \nIt has a mass of #{mass_kg} kg and \nis known for #{fun_fact}."
  end
end
