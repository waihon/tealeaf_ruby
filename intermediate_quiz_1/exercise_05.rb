require 'pry'

def factors(number)
  dividend = number
  divisors = []
  begin
    # Determine if the result of the division is an integer (i.e. remainder is 0)
    divisors << number / dividend if number % dividend == 0
    #binding.pry
    dividend -= 1
  end until dividend == 0
  # Return divisors to the caller
  divisors
end

p factors 50

def new_factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p new_factors 50
p new_factors 0
p new_factors -50 