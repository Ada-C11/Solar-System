# Create a class for Solar System

class SolarSytem
  # Adding readers
  attr_reader(:star_name, :planets)
  # Adding a Constructor here!
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end