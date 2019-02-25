require_relative 'planet'

def main
  #... do stuff with planets...
  venus = Planet.new(name: "Venus", color: 'purple', mass_kg: '3.88e10', distance_from_sun_km: '1.3e8', fun_fact: 'this planet is commonly associated with feminine energy')

  pluto = Planet.new(name: "Pluto", color: 'icy-grey', mass_kg: '0.88e10', distance_from_sun_km: '15.3999e8', fun_fact: 'Pluto was recently debunked from the official planet list!')

  puts venus.summary 
  puts pluto.summary
end

main