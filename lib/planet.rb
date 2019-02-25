class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun, fun_fact)
    if mass_kg <= 0 || distance_from_sun <= 0
      raise ArgumentError, "Mass and distance from sun must be greater than zero!"
    end
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun = distance_from_sun
    @fun_fact = fun_fact
  end

  def summary
    return "\nName: #{@name}" +
             "\nColor: #{@color}" +
             "\nMass: #{@mass_kg} kg" +
             "\nDistance from sun : #{distance_from_sun} km" +
             "\nFun fact: #{fun_fact}"
  end
end
