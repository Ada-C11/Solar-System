class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
  end

  def color
    return @color
  end

  def color=(color)
    @color = color
  end

  def mass_kg
    return @mass_kg
  end

  def mass_kg=(mass_kg)
    @mass_kg = mass_kg
  end

  def distance_from_sun_km
    return @distance_from_sun_km
  end

  def distance_from_sun_km=(distance_from_sun_km)
    @distance_from_sun_km = distance_from_sun_km
  end

  def fun_fact
    return @fun_fact
  end

  def fun_fact=(fun_fact)
    @fun_fact = fun_fact
  end

  def summary
    return "The planet #{@name} is the color #{@color}. A neat fact about the planet: #{@fun_fact}."
  end
end

# Load Planet into pry:
# $ pry -r ./planet.rb
mars = Planet.new("Mars", "red", 6.3E23, 227.9E9, "greek god of war Aries planet")
venus = Planet.new("Venus", "pink", 4.86E24, 108E9, "greek goddess of love Aphrodites planet")
jupiter = Planet.new("Neptune", "blue", 1.02E26, 4.495E9, "greek god of the sea Poseidons planet")
