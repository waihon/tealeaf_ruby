number = 4936
thousands_number = number / 1000
hundreds_number = (number % 1000) / 100
tens_number = (number % 100) / 10
ones_number = (number % 10)
puts "Thousands number: #{thousands_number}"
puts "Hundreds number: #{hundreds_number}"
puts "Tens number: #{tens_number}"
puts "Ones number: #{ones_number}"