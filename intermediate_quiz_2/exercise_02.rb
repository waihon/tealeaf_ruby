munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}

# Waihon's solution
names = munsters.keys.sort
names.each_with_index do |name, index|
  munsters[name]["index"] = index
end

# Sort munsters by the key
munsters.sort.map do |key, value|
  puts "#{key}: #{value}"
end
puts

# Sort munsters by one of its attributes
munsters.sort_by { |name, person_hash| person_hash["index"] }.to_h.each do |name, person_hash|
  puts "#{name}: #{person_hash}"
end
puts

# Tealeaf's solution
index = 0
munsters = munsters.each { |name, person_hash| person_hash[:original_order] = index; index += 1 }
munsters = munsters.each { |name, person_hash| person_hash[:length_order] = key.length }

# [0] refers to name; [1] refers to person hash
munsters.to_a.sort { |a, b| a[1][:original_order] <=> b[1][:original_order] }.each do |item|
  puts "#{item[0]}: #{item[1]}"
end
puts

# [0] refers to name; [1] refers to person hash
munsters.to_a.sort { |a, b| a[1][:length_order] <=> b[1][:length_order] }.each do |item|
  puts "#{item[0]}: #{item[1]}"
end
