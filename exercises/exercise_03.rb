numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Own solution
# odd_numbers = numbers.select { |number| number.odd? }
# p odd_numbers

# Author's solution
odd_numbers = numbers.select { |number| number % 2 != 0 }
p odd_numbers