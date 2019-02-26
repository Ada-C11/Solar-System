require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use!

describe 'Planet Class' do
  describe 'Constructor' do
    it 'raise ArgumentError if mass and distance from sun are negative or non nums' do
        expect {
          Planet.new('Earth', 'blue-green', -1, 1.496e8, 'Only planet known to support life')
        }.must_raise(ArgumentError)

        expect {
            Planet.new('Earth', 'blue-green', 5.972e2, -1.496e8, 'Only planet known to support life')
        }.must_raise(ArgumentError)

        expect {
            Planet.new('Earth', 'blue-green', 'lorem', -1.496e8, 'Only planet known to support life')
        }.must_raise(ArgumentError)
    end
  end
end
