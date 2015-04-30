names = ["Joe", "John", "David", "Peter", "Ken"]

names.each_with_index do |name, index|
  puts "#{index + 1}. #{name}"
end