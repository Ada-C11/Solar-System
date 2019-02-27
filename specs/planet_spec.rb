require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet' do
  it 'raises an ArgumentError if mass_kg <= 0' do
    # Act & Assert
    expect {
      pink_planet = Planet.new("test_planet", "pink", 0, 5000, "funny")
    }.must_raise ArgumentError
  end

  it 'raises an ArgumentError if distance_from_sun <= 0' do
    expect {
      test_planet = Planet.new("test_planet", "pink", 5, 0, "funny")
    }.must_raise ArgumentError
  end

end