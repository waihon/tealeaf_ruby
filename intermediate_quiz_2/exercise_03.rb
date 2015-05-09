munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Waihon's solution
munsters.each do |name, person_hash|
  #puts "#{name} is a #{person_hash["age"]} (#{person_hash["gender"]})."
  str = "(Name) is a (age) year old (male or female)."
  str.gsub!("(Name)", name).gsub!("(age)", person_hash["age"].to_s).gsub!("(male or female)", person_hash["gender"])
  puts str
end
puts

# Tealeaf's solution
munsters.each_pair do |name, person_hash|
  puts "#{name} is a #{person_hash["age"]} year old #{person_hash["gender"]}"
end