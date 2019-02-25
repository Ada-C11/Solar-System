require_relative "./planet.rb"

def main
  cheese_moon = Planet.new("Cheese Moon", "orange", 500, 12500, "Made of a delicious brie-gruyere blend")
  fire_ball = Planet.new("Big Ball of Fire", "red", 100, 42000, "Gives the worst sunburn of all planets")
  puts cheese_moon.summary
  puts fire_ball.summary
end

main
