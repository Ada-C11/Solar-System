# class that creates instances of planets
class Planet
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # constructor that initializes a name, color, mass (kg), distance from the sun (km), and fun fact
  # about each instance of a planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # method that prints out a summary of a planet instance
  def summary
    return "#{@name} is a #{@color} planet with a mass of #{@mass_kg} kg and is #{@distance_from_sun_km} " \
           "km from the sun! DID YOU KNOW: #{@fun_fact}?!?!"
  end
end
