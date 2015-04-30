# # Own Solution
# loop do
#   puts "Please enter your name to continue (or STOP to exit):"
#   answer = gets.chomp
#   if answer == "STOP"
#     break
#   else
#     puts "Hello #{answer}!"
#   end
# end

# Author's Solution
x = ""
while x != "STOP" do
  puts "Hi, how are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end