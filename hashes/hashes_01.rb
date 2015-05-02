family = { uncles:   ["Bob", "Joe", "Steve"],
           sisters:  ["Jane", "Jill", "Beth"],
           brothers: ["Frank", "Rob", "David"],
           aunts:    ["Mary", "Sally", "Susan"] 
         }

# Own solution
# immediate_family_hash = family.select { |key, value| key == :sisters || key == :brothers }
# immediate_family_array = immediate_family_hash.values.flatten
# p immediate_family_array

# Author's solution
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr