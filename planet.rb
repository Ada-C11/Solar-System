class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg.round(0)
    @distance_from_sun_km = distance_from_sun_km.round(0)
    @fun_fact = fun_fact
  end

  def summary
    return "#{name} is a #{color} planet that weighs #{mass_kg} kg and is #{distance_from_sun_km} km from the sun. Fun fact: #{name} #{fun_fact}!"
  end
end
