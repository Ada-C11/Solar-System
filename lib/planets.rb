class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    # unless statement about mass size / km
    unless mass_kg > 0
      raise ArgumentError.new("Mass size must be greater than 0")
    end

    unless distance_from_sun_km > 0
      raise ArgumentError.new("The distance must be greater than 0")
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "The planet's name is #{name}. Its color is #{color}. It has a mass of #{mass_kg}kg, and it is #{distance_from_sun_km}km from the sun. A fun fact is that #{name} is #{fun_fact}"
end
end



# Load Planet into pry:
# $ pry -r ./planet.rb
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')


