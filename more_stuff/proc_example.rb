talk = Proc.new do
  puts "I am talking"
end

talk.call

talk2 = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk2.call "Bob"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

def take_proc2(array, proc)
  results = []
  array.each do |element|
    results << element if proc.call(element)
  end
  results
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_proc = Proc.new { |number| number.odd? }
even_proc = Proc.new { |number| number.even? }

p take_proc2(numbers, odd_proc) 
p take_proc2(numbers, even_proc) 