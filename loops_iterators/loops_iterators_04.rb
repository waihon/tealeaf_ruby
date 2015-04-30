# #
# # Counts down to zero using recursion.
# #
# def count_down_to_zero(number)
#   puts number
#   if number > 0
#     count_down_to_zero(number - 1)
#   end
# end

# count_down_to_zero 10
# count_down_to_zero -5

# Solution
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)