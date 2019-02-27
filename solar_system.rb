class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def user_add_planet(solar_system)
    puts "\nAdding a planet is for scientists ONLY. Are you a real scientist? (Y/N)"
    y_n = gets.chomp.upcase
      if y_n == "N"
        control_loop
      elsif y_n == "Y"
        puts "<Computer nods respectfully.>"
      else
        control_loop
      end
    puts "Please provide some data:"
    p "Name of planet: "
    name = gets.chomp
    p "Planetary mass in kilograms/10^24?"
    mass_kg = gets.chomp.to_f
    p "Orbital radius in kilometers/10^22:"
    distance_from_sun = gets.chomp.to_f
    p "Frivolous detail (REQUIRED): "
    fun_fact = gets.chomp
    p "Surface color: "
    name = gets.chomp
    begin
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun, fun_fact)
      solar_system.add_planet(new_planet)
    rescue ArgumentError => error
      puts "\nIllogical planetary data. Try again.".colorize(:red)
      puts error.message
    else
      puts "\nThank you for the science.\n"
    end
  end

  def list_planets
    @list = ""
      @planets.length.times do |i|
        @list = @list + "\n#{i+1}. #{@planets[i].name}"
      end
    puts "The #{@star_name} system includes: #{@list}"
    puts
  end
#Broken, can't get this to work.
  def find_planet_by_name(name)
    if @planets.count { |i| (i.name == name) } > 0
      found_planets = @planets.select { |i| (i.name == name) }
      found_planets.each do |i|
        puts i.summary
      end
    else
      puts "Sorry, no planet with that name found.".colorize(:red)
      puts
    end
  end

  def elucidate
    print 'Enter planet name to read relevant scientific output: '
    planet_name = gets.chomp
    find_planet_by_name(planet_name)
  end

end