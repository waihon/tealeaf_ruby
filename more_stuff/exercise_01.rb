# Own solution
strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
strings.each do |string|
  if string =~ /lab/
    puts "\"lab\" exists in \"#{string}\""
  else
    puts "\"lab\" does not exist in \"#{string}\""
  end
end

# Author's solution
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")