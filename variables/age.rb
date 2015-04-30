puts "How old are you? "
age = gets.chomp.to_i
years = [10, 20, 30, 40]
for i in years do 
  puts "In #{i} years you will be:"
  puts "#{age + i}"
end