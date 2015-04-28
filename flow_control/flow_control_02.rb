# 
# This method returns the all-caps version of the string, only
# if the string is longer than 10 characters.
#
def cond_upper_case(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts cond_upper_case("hi there")          #=> "hi there"
puts cond_upper_case("hi there my dear")  #=> "HI THERE MY DEAR"