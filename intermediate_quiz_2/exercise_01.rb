munsters = { 
  "Herman"  => { "age" => 32, "gender" => "male" }, 
  "Lily"    => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie"   => { "age" => 10, "gender" => "male" } 
}

# Waihon's Solution
male_count = 0
total_male_age = 0
munsters.values.each do |person_hash|
  if person_hash["gender"] == "male"
    male_count += 1
    total_male_age += person_hash["age"]
  end
end
puts "Male Members Count: #{male_count}"
puts "Total Age of Male Members: #{total_male_age}"

# Tealeaf's Solution
total_male_age = 0
munsters.each do |key, value|
  male_family_member = value["gender"] == "male"
  total_male_age += male_family_member ? value["age"] : 0
end
puts "Total Male Members Age: #{total_male_age}"