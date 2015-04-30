def n_factorial(n)
  if n > 1
    n * n_factorial(n-1)
  else n == 1
    1
  end
end

five_factorial = 1 * 2 * 3 * 4 * 5
six_factorial = five_factorial * 6
seven_factorial = six_factorial * 7
eight_factorial = seven_factorial * 8
puts five_factorial
puts six_factorial
puts seven_factorial
puts eight_factorial
puts n_factorial(5)
puts n_factorial(6)
puts n_factorial(7)
puts n_factorial(8)