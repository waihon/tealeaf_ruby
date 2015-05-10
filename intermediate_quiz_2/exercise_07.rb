require 'pry'

munsters = { 
 "Herman" => { "age" => 32, "gender" => "male" }, 
 "Lily" => { "age" => 30, "gender" => "female" }, 
 "Grandpa" => { "age" => 402, "gender" => "male" }, 
 "Eddie" => { "age" => 10, "gender" => "male" },
 "Marilyn" => { "age" => 23, "gender" => "female"}
}

cloned_munsters = munsters.clone
# Reassigning a new content to cloned_munsters does not modify munsters.
cloned_munsters["Herman"] = { "age" => 32 + 42, "gender" => "other" }
cloned_munsters["Lily"] = { "age" => 30 + 42, "gender" => "other" }
cloned_munsters["Grandpa"] = { "age" => 402 + 42, "gender" => "other" }
cloned_munsters["Eddie"] = { "age" => 10 + 42, "gender" => "other" }
cloned_munsters["Marilyn"] = { "age" => 23 + 42, "gender" => "other"}
# Changing the content of cloned_munsters directly does modify monsters.
#cloned_munsters["Lily"]["age"] = 30 + 42
#cloned_munsters["Lily"]["gender"] = "other"

p munsters
p cloned_munsters
p munsters.object_id
p cloned_munsters.object_id

puts

def mess_with_demographics(demo_hash)
  #demo_hash.values.each do |family_member|
  cloned_hash = demo_hash.clone
  cloned_hash.each do |name, family_member|
    cloned_hash[name] = { "age" => family_member["age"] + 42, "gender" => "other" }
  end
  p cloned_hash
end

def mess_with_demographics!(demo_hash)
  demo_hash.values.each do |family_member|
    # Changing the content of demo_hash directly does modify monsters.
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
  p demo_hash
end

#cloned_munsters = munsters.clone
#mess_with_demographics(cloned_munsters)
mess_with_demographics!(munsters)
p munsters          # Same as cloned_musters
#p cloned_munsters   # Got changed
