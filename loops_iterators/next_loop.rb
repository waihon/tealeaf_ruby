i = 0
loop do
  i += 2
  if i == 4
    next    # Skip rest of the code in this iteration
  end
  puts "#{i}"
  if i == 10
    break
  end
end