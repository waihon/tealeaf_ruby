p a = [1, 2, 3]
p b = [2, 3, 4]
p a == b    #=> false
p b.pop
p b.unshift(1)   # Adds the arguments that you specify to the front of the list
p a == b    #=> true