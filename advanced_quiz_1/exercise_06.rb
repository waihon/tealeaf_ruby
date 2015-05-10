def is_a_number?(str)
  num = str.to_i
  num.to_s == str ? true : false
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end

  return true
end

puts is_a_number?("x")
puts is_a_number?("xyz")
puts is_a_number?("12x")
puts is_a_number?("xy1")
puts is_a_number?("1.234567890")
puts is_a_number?("1234567890")
puts
p dot_separated_ip_address?("1.2.3.4")
p dot_separated_ip_address?("1.2.3")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("1.2.x.4")