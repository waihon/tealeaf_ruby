a = 5
3.times do |n|
  a = 3
  b = 5
end
puts a  #=> 3
#puts b

a = 5
def some_method
  a = 3
end
puts a  #=> 5

arr = [1, 2, 3]
for i in arr do
  a = 5
end
puts a  #=> 5