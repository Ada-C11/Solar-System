
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "\nIn a galaxy far away (not start wars) 
    there is a planet called #{name}. It appears 
    to be #{color} and its mass is #{mass_kg}. 
    The distance between #{name} and the 
    sun is #{distance_from_sun_km} kms. 
    Something that you might not know is that #{fun_fact}."
  end
end

#   Question: Why do we puts in main but not in Planet#summary?
#       Because in Planet#summary we are modeling the behavior and state
#       for the new instances of the class. In main we actually
#       use the state and behavior
