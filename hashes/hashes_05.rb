# We can use has_value? to find out if a hash contains a specific value in it.

# Own solution
capitals = { malaysia: "Kuala Lumpur", thailand: "Bangkok", china: "Beijing" }
p capitals.has_value?("Kuala Lumpur")
p capitals.has_value?("London")

# Author's solution
opposites = { positive: "negative", up: "down", right: "left" }
if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end