# Own solution
capitals = { malaysia: "Kuala Lumpur", thailand: "Bangkok", china: "Beijing" }
capitals.keys.each { |country| puts country.capitalize }
capitals.values.each { |capital| puts capital.capitalize }
capitals.each { |country, capital| puts "The capital of #{country.to_s.capitalize} is #{capital.capitalize}." }

# Author's solution
opposites = { positive: "negative", up: "down", right: "left" }
opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}."}