require "pry"

# Given the array...
words = ["demo", "none", "tied", "evil", "dome", "mode", "live", 
         "fowl", "veil", "wolf", "diet", "vile", "edit", "tide",
         "flow", "neon"]

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same edact letters in them but in a
# different order.

words_hash = Hash.new
words.each do |word|
  words_hash.merge!({ word => word.split('').sort })
end

# {"demo"=>["d", "e", "m", "o"],
#  "none"=>["e", "n", "n", "o"],
#  "tied"=>["d", "e", "i", "t"],
#  "evil"=>["e", "i", "l", "v"],
#  "dome"=>["d", "e", "m", "o"],
#  "mode"=>["d", "e", "m", "o"],
#  "live"=>["e", "i", "l", "v"],
#  "fowl"=>["f", "l", "o", "w"],
#  "veil"=>["e", "i", "l", "v"],
#  "wolf"=>["f", "l", "o", "w"],
#  "diet"=>["d", "e", "i", "t"],
#  "vile"=>["e", "i", "l", "v"],
#  "edit"=>["d", "e", "i", "t"],
#  "tide"=>["d", "e", "i", "t"],
#  "flow"=>["f", "l", "o", "w"],
#  "neon"=>["e", "n", "n", "o"]}

# Own solution
# anagrams = Hash.new
# words_hash.each do |key, value|
#   if anagrams[value] == nil
#     anagrams[value] = []
#   end
#   anagrams[value] << key
# end
# anagrams.each_value { |value| p value }

# Author's solution
result = {}
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end