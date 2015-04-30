#
# While below construct works, it's not recommended by Matz, the creator of Ruby.
#
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'