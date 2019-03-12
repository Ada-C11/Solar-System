require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")

  elvis = Planet.new("Elvis", "shiny", 159, 20, "recorded more than 600 songs, but did not write any of them", 3.5, 85)
  hank_sr = Planet.new("Hank Sr", "white as hell", 72, 30, "recorded 14 songs as his alter ego, Luke the Drifter", 4.5, 10)
  dolly = Planet.new("Dolly", "canary yellow", 52, 18, "once entered a Dolly look-alike drag queen contest and lost", 4.8, 90)
  patsy = Planet.new("Patsy", "chesnut", 70, 40, "enjoys walking after midnight", 3.4, 0.5)
  garth = Planet.new("Garth", "off-white", 83, 45, "is responsible for the the most insufferable variety of country boi", 4.6, 99)
  johnny = Planet.new("Johnny", "coal black", 86, 5, "was a campaigner for Native American rights", 3.6, 91)
  reba = Planet.new("Reba", "red", 60, 10, "is the only country female solo act to have a No. 1 hit in four straight decades", 5.0, 70)
  willie = Planet.new("Willie", "old", 70, 7, "ran into a burning house to save his pound of Columbian grass", 3.8, 15)

  solar_system.add_planet(elvis)
  solar_system.add_planet(hank_sr)
  solar_system.add_planet(dolly)
  solar_system.add_planet(patsy)
  solar_system.add_planet(garth)
  solar_system.add_planet(johnny)
  solar_system.add_planet(reba)

  puts "Country Music Planetary Menu\n"
  puts "1. List Planets\n"
  puts "2. Planet Information\n"
  puts "3. Add a New Planet\n"
  puts "4. Distance Calculator\n"
  puts "5. Exit\n"

  loop do
    "Please enter your selection from the above options."
    input = gets.chomp.to_s
    case
    when input == "1"
      puts solar_system.list_planets
    when input == "2"
      planet = solar_system.get_planet_name
      puts planet.summary
    when input == "3"
      solar_system.get_info_new_planet
      puts "\n...Entered into system. Thank You."
    when input == "4"
      solar_system.find_distance_between
      puts "\nDistance between #{planet1.name} and #{planet2.name}: #{distance.abs} km."
    when input == "5"
      exit
    when input =~ /[[:alpha:]]/
      puts "\nYour response was invalid"
    end
  end
end

main
