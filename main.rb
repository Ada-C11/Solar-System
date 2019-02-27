require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  jupiter = Planet.new("Jupiter", "reddish", 578944636, 75436.32, "This planet has been a planet since the big bang.")

  saturn = Planet.new("Saturn", "multi-colored striped", 39435845, 222343, "This planet has rings of gas, dust and rock.")

  largo = Planet.new("Largo", "fushia", 4332, 435, "This planet is bright and sparsely populated. Life is not carbon-based.")

  office_space = Planet.new("Office Space", "blue-grey", 4534534, 66685995, "Residents of this planet must submit one TPS Report every Friday. Visitors may be required to work on the weekend.")

  playground = Planet.new("Playground", "orange", 686869939393, 8899494, "This planet is located at the edge of the universe.")

  solar_system_1 = SolarSystem.new("Sol")
  solar_system_1.add_planet(jupiter)
  solar_system_1.add_planet(saturn)
  solar_system_1.add_planet(largo)
  solar_system_1.add_planet(office_space)
  solar_system_1.add_planet(playground)

  list = solar_system_1.list_planets
  user_cont_choice = "LIST PLANETS"
  until user_cont_choice != "LIST PLANETS"
    puts "Hello! What would you like to do? You can LIST PLANETS or EXIT."
    user_cont_choice = gets.chomp.upcase
    if user_cont_choice.upcase == "EXIT"
      break
    end
    puts list
    puts "\nWhich planet would you like to learn about? (enter its name)"
    user_planet_choice = gets.chomp
    user_choice_planet = solar_system_1.find_planet_by_name(user_planet_choice)
    puts user_choice_planet.summary
    puts "-------"
  end

  found_planet = solar_system_1.find_planet_by_name("Jupiter")
  #   puts found_planet.name
  #   puts found_planet.summary
  #   return "#{jupiter.summary} #{saturn.summary} #{playground.summary}"
end

main
