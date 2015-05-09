munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Waihon's solution
# munsters = munsters.each.map do |name, attributes|
#   age = attributes["age"]
#   case 
#   when age < 18
#     demographic = "kid"
#   when age < 60
#     demographic = "adult"
#   else
#     demographic = "senior"
#   end
#   hash = { "demographic" => demographic }
#   attributes.merge(hash)
# end
# p munsters

# Author's solution
age_of_majority = 18
dotage = 65
munsters.each do |key, value|
  value[:demographics] = "kid" if value["age"] < age_of_majority
  value[:demographics] = "adult" if (age_of_majority..(dotage-1)).include?(value["age"])
  value[:demographics] = "senior" if value["age"] >= dotage
end
p munsters