class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        if !mass_kg.is_a?(Numeric) || mass_kg < 0
            raise ArgumentError.new("Planet mass has to be a positive number")
        end

        if !distance_from_sun_km.is_a?(Numeric) || distance_from_sun_km < 0
            raise ArgumentError.new("Distance from the sun has to be a postive number.")
        end

        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
    end

    def summary
        return "The #{@name} is #{@color}, weighs #{@mass_kg} kg, and is about #{@distance_from_sun_km} km from the sun. Fun fact: #{@fun_fact}"
    end
end