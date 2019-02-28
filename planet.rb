require 'faker'
def autofactoid(planet_name)
  return ["On #{planet_name}, an atmospheric event called a #{Faker::Games::Pokemon.move} is a rare but spectacular sensory experience causing a thick, soupy #{Faker::Color.color_name} cloud of #{Faker::Coffee.notes}-scented mist to roll over the surface of the planet",
    "#{planet_name} was first spotted by an unnamed #{Faker::Military.marines_rank} working for the #{Faker::Space.agency} who originally named it #{Faker::Movies::Hobbit.character} in honor of the office dog. The name was only changed to #{planet_name} in #{rand(1900...1999)}", "#{Faker::GreekPhilosophers.name} famously postulated that #{planet_name} was merely a rumor"].sample
end

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new("Kilograms invalid. Try again.") if mass_kg.to_i <= 0
    raise ArgumentError.new("Kilometers invalid. Try again.") if distance_from_sun_km.to_i <= 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = autofactoid(name)
  end

  def summary
    return ("\n#{@name} has a #{@color} color and mass of #{@mass_kg}x10^24 kg." +
    "\nIt is #{@distance_from_sun_km}x10^6 km away from the sun." +
    "\n\n#{@fun_fact}.\n")
  end
end
