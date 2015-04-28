#
# This program takes a number from the user between 0 and 100 and
# reports back whether the number is between 0 and 50, 50 and 100, or
# above 100.
#
def flow_control_03
  puts "Please enter a number: "
  number = gets.chomp.to_i
  if number < 0
    puts "You can't enter a negative number"
  elsif number <= 50
    puts "Between 0 and 50"
  elsif number <= 100
    puts "Between 51 and 100"
  else
    puts "Above 100"
  end
end

flow_control_03