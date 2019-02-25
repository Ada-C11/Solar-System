# wave 1

class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_kg, :fun_fact

    def initialize(name, color, mass_kg, distance_from_sun_kg, fun_fact)
        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_kg = distance_from_sun_kg
        @fun_fact = fun_fact
    end

    def summary
        return "Planet #{name} is #{color}.  #{name} weighs #{mass_kg} kg and is #{distance_from_sun_kg} km away from the sun.  Fun fact about #{name}: #{fun_fact}."
    end
end

# Question: Why do we puts in the main but not in Planet#summary?
# We don't necessarily always want the Planet#summary to print when it is 
# invoked.
