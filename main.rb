require_relative "planet.rb"

def main
  vulcan = Planet.new("Vulcan", "brown & reddish", 546700, 8426000, "Has no moon")

  shoreleave = Planet.new("Shore Leave Planet", "green", 492600, 8634000, "Created as an amusement park")

  puts vulcan.summary
  puts shoreleave.summary
end

main
