
# 1. **OPTIONAL:** Add error checking to your constructor.
#     - Both `mass_kg` and `distance_from_sun_km` must be numbers that are greater than zero.
#     - What should your program do if they aren't?
#     - How will you make sure this behavior works?

# 1. **OPTIONAL:** Add minitest tests for `Planet`.

require_relative "planet"

def main
  puts ARIEL.summary
  puts LONDINIUM.summary
end

main
