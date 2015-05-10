def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else  # scissors
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps("rock", "paper")       #=> paper
puts rps("rock", "scissors")    #=> rock
puts rps("paper", "scissors")   #=> scissors
puts rps("paper", "rock")       #=> paper
puts rps("scissors", "rock")    #=> rock
puts rps("scissors", "paper")   #=> paper
puts

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#=> rps(rps("paper", "rock"), "rock")
#=> rps("paper, "rock")
#=> "paper"
