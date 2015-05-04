numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Append 11 to the end of the array.
numbers << 11
# Prepend 0 to the beginning of the array.
numbers.unshift(0)
# Get rid of 11
numbers.pop
# Append a 3
numbers << 3
# Get rid of dupllicates without specifically removing any one value
unique_numbers = numbers.uniq

p numbers
p unique_numbers