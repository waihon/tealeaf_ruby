contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
p contact_data

# Own solution
# keys = [:email, :address, :phone]
# i = 0
# contacts = Hash.new
# contacts["Joe Smith"] = Hash.new
# keys.each do |key|
#   contacts["Joe Smith"][key] = contact_data[0][i]
#   i += 1
# end

# Author's solution
contacts = { "Joe Smith" => {}, "Sally Jones" => {} }
fields = [:email, :address, :phone]
contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts