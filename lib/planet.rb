# Create class for Planet

class Planet
   # To avoid repition use attr_reader
  attr_reader(:name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact)

   # Adding a Constructor here!
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)

    unless mass_kg > 0
       raise ArgumentError 'Mass must be a number greater than zero.'
    end 

    unless distance_from_the_sun_km > 0
       raise ArgumentError 'Distance from sun must be a number greater than zero.'
    end 

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} is a planet in our solar system. It is #{@color}in color. #{@name}'s mass is #{@mass_kg} kg's. It's distance from the sun is #{@distance_from_the_sun_km} kilometers. Fun fact: #{@fun_fact}. Cool huh?!"
  end

end