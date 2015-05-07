# Own solution
statement = "The Flintstones Rock"
i = 0
alphabets_hash = {}
alphabets = ('A'..'Z').to_a.concat(('a'..'z').to_a)
while i < statement.length
  character = statement[i]
  if alphabets.include?(character)
    if alphabets_hash.key?(character)
      alphabets_hash[character] += 1
    else
      alphabets_hash[character] = 1
    end
  end
  i += 1
end
p alphabets_hash

# Author's solution
result = {}
letters = ('A'..'Z').to_a.concat(('a'..'z').to_a)
letters.each do |letter|
  count = statement.scan(letter.to_s).count
  result[letter] = count if count > 0
end
p result
