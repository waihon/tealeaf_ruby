def fib(first_num, second_num, limit)
  # Fn = Fn-1 + Fn-2
  # with seed values
  # F1 = 1, F2 = 1 or F0 = 0, F1 = 1
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"