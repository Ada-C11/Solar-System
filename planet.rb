class Planet
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    if mass_kg.class != Integer || mass_kg < 0
      @mass_kg = 0
    else
      @mass_kg = mass_kg
    end
    # @distance_from_the_sun_km = distance_from_the_sun_km
    if distance_from_the_sun_km != Integer || distance_from_the_sun_km < 0
      @distance_from_the_sun_km = 0
    else
      @distance_from_the_sun_km = distance_from_the_sun_km
    end
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  def summary
    summary = "Planet name: #{@name} \nColor: #{@color} \nWeight: #{@mass_kg} \nDistance from sun: #{@distance_from_the_sun_km} \nFun Fact: #{@fun_fact}"

    return summary
  end

  # add if we want to return puts "a #{planet}" as summary
  #   def to_s
  #     return summary
  #   end
end
