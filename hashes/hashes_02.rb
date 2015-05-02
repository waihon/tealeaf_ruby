#
# The merge method returns a new hash without modifying the one being invoked.
# The merge! method modifies the hash being invoked permanently
#
# Own solution
# premier_league = { chelsea: 1, man_city: 2, arsenal: 3, man_utd: 4}
# top_5 = { liverpool: 5 }
# premier_league.merge top_5
# p premier_league
# premier_league.merge! top_5
# p premier_league

# Author's solution
cat = { name: "Whiskers" }
weight = { weight: "10 lbs" }
puts cat.merge(weight)
puts cat                  #=> {:name=>"Whiskers"}
puts weight               #=> {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  #=> {:name=>"Whiskers", :weight=>"10 lbs"}