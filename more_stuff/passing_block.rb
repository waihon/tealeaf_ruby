def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

def take_block2(number, &block)
  block.call
end

[1, 2, 3, 4, 5].each do |number|
  take_block2 number do
    puts "Block being called in the method! #{number}"
  end
end

def take_block3(&block)
  [1, 2, 3, 4, 5].each do |number|
    block.call(number)
  end
end

take_block3 do |number|
  puts "Block being called in the method! #{number}"
end

def take_block4(array, &block)
  results = []
  array.each do |element|
    results << element if block.call(element)
  end
  results
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p take_block4(numbers) { |n| n.odd? }
p take_block4(numbers) { |n| n.even? }