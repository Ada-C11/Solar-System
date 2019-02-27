class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(added_planet)
    # puts added_planet, "This is the value of added_planet"
    @planets << added_planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planets, number|
      item = "#{number + 1}. #{planets.name}\n"
      list += item
    end
    return list
  end

  def find_planet_by_name(find_planet)
    repeat_name = @planets.find { |planet_name| planet_name.name == find_planet.capitalize }
    return repeat_name
  end
end
