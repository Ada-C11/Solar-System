class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet_details
    puts "Enter the new planet's name: "
    name = gets.chomp.capitalize
    puts "Color of the planet: "
    color = gets.chomp.downcase
    puts "Mass in kilograms: "
    mass = gets.chomp.to_i
    puts "Distance from the sun in kg"
    distance = gets.chomp.to_i
    puts "A fun fact about the planet: "
    fun_fact = gets.chomp.capitalize

    new_planet = Planet.new(name: "#{name}", color: "#{color}", mass_kg: mass, distance_from_sun_km: distance, fun_fact: "#{fun_fact}")

    add_planet(new_planet)
  end

  def add_planet(planet)
    @planets.push(planet)
    return planet
  end

  def list_planets
    list_of_planets = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      list_of_planets += "\n#{index + 1}: #{planet.name}"
    end
    return list_of_planets
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.capitalize == planet_name.capitalize
        return planet
      end
    end
    return nil
  end
end
