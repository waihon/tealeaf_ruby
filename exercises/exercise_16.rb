a = ["white snow", "winter wonderland", "melting ice",
     "slippery sidewalk", "salted roads", "white trees"]

new_array = a.map do |e|
  e.split(" ").flatten
end
new_array.flatten!
p new_array