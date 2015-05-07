numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  # First in first out
  numbers.shift(1)
end
#=> 1
#=> 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  # Last in first out
  numbers.pop(1)
end
#=> 1
#=> 2