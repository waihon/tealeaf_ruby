# Own solution
# a = [1, 2, 3, 4, 5]
# b = a.map { |x| x + 2 }
# p a
# p b

# Author's solution
arr = [1, 2, 3, 4, 5]

new_arr = []
arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr