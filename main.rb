require_relative 'planet'
require_relative 'solar_system'
require 'faker'
require 'ruby_figlet'
require 'colorize'
require 'rubygems'
require 'highline/import'

def main
  @solar_system = SolarSystem.new(Faker::Space.star)

  autofactoid = [
    "On #{@name}, an atmospheric event called a #{Faker::Games::Pokemon.move} is a rare but spectacular sensory experience, causing a thick, soupy #{Faker::Color.color_name} cloud of #{Faker::Coffee.notes}-scented mist to roll over the surface of the planet",
    "#{@name} was first spotted by an unnamed #{Faker::Military.marines_rank} working for the #{Faker::Space.agency} who originally named it  #{Faker::Movies::Hobbit.character} in honor of the office dog. The name was only changed to #{@name} in #{rand(1900...1999)}", "#{Faker::GreekPhilosophers.name} famously postulated that #{@planet} was merely a rumor"
    ]

  6.times do
  new_planet = Planet.new(Faker::Books::Dune.unique.planet, Faker::Color.color_name, rand(100...10000), rand(100...10000), autofactoid.sample)
  @solar_system.add_planet(new_planet)
end

def control_loop
  begin
    puts "\n\n"
    loop do
      choose do |menu|
        menu.prompt = "\nPlease select your option: "
        menu.choice("List Planets") { @solar_system.list_planets }
        menu.choice("Planet Summary") { @solar_system.elucidate }
        menu.choice("Add a New Planet") { @solar_system.user_add_planet(@solar_system) }
        menu.choice("Quit") { exit }
      end
    end
  end
end

# Start the control loop.
puts "Welcome to ...\n\n"
sleep 2
puts <<-'EOF'
       ▀▄   ▄▀        ▄▄▄████▄▄▄        ▄██▄         ▀▄   ▄▀              ▀▄   ▄▀          ▀▄   ▄▀
EOF
sleep 1
puts <<-'EOF'
       ▄█▀███▀█▄      ███▀▀██▀▀███     ▄█▀██▀█▄      ▄█▀███▀█▄            ▄█▀███▀█▄        ▄█▀███▀█▄
      █▀███████▀█     ▀▀███▀▀███▀▀     ▀█▀██▀█▀     █▀███████▀█          █▀███████▀█      █▀███████▀█
EOF
sleep 1
puts <<-'EOF'
      ▀ ▀▄▄ ▄▄▀ ▀      ▀█▄ ▀▀ ▄█▀      ▀▄    ▄▀     ▀ ▀▄   ▄▀ ▀          ▀ ▀▄▄ ▄▄▀          ▀▄    ▄▀    <3

EOF

 space_title = RubyFiglet::Figlet.new "
o u t e r * s p a c e", 'basic'
space_title.show
control_loop
end
main