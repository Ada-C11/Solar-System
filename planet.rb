class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :twang_level, :likelihood_to_be_loved_by_yanks

  def initialize(name, color, mass, distance, fun_fact, twang_level, likelihood_to_be_loved_by_yanks)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @twang_level = twang_level
    @likelihood_to_be_loved_by_yanks = likelihood_to_be_loved_by_yanks
  end
end
