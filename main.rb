require_relative "planet"
require 'pry'

def main

    elvis = Planet.new('Elvis', 'shiny', 159, 20, 'recorded more than 600 songs, but did not write any of them', 3.5, 85)
    hank_sr = Planet.new('Hank Sr', 'white as hell', 72, 30, 'recorded 14 songs as his alter ego, Luke the Drifter', 4.5, 10)
    dolly = Planet.new ('Dolly', 'canary yellow', 52, 18, 'once entered a Dolly look-alike drag queen contest and lost', 4.8, 90)
    patsy = Planet.new ('Patsy','chesnut', 70, 40, 'enjoys walking after midnight', 3.4, 0.5)
    garth = Planet.new ('Garth', 'off-white', 83, 45, 'is responsible for the the most insufferable variety of country boi', 4.6, 99)
    johnny = Planet.new ('Johnny', 'coal black', 86, 5, 'was a campaigner for Native American rights and wrote a song titled “Old Apache Squaw” which his record company thought it too radical', 3.6, 91)
    reba = Planet.new ('Reba', 'red', 60, 'is the only country female solo act to have a No. 1 hit in four straight decades: the 1980s, 90s, 00s and 10s', 5.0, 70)
    willie = Planet.new ('Willie', 'old', 70, 7, 'ran into a burning house to save his pound of Columbian grass', 3.8, 15)

end

main