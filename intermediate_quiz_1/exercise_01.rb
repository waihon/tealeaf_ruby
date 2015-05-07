# Own solution
10.times { |index| puts (" " * index) + "The Flintstones Rock!" }

# Author's solution
10.times { |index| puts "The Flintstones Rock!".rjust(21 + index) }