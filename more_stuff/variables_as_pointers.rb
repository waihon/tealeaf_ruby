def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

def test!(b)
  b.map! { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
b = test(a)
p a
p b

a = ['a', 'b', 'c']
p a
b = test!(a)
p a
p b
