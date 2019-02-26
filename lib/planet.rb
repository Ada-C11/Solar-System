class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    raise ArgumentError if @mass_kg < 0 || @distance_from_sun_km < 0
    # @planet_info = []

  end

  def summary
    rows = []
    rows << [name, color, mass_kg, distance_from_sun_km, fun_fact]
    # @planet_info << {name => name, color => color, mass => mass_kg distance => distance_from_sun_km, funfact => fun_fact}

    table = Terminal::Table.new :headings => ["Planet", "Color", "mass_kg", "distance (km)", "fun fact"], :rows => rows
    return table
  end
end
