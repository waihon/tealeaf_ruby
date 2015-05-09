# Waihon's solution
sentence = "Humpty Dumpty sat on a wall."
array = sentence.split(" ").reverse
backward_sentence = array.join(" ")
p backward_sentence

# Tealeaf's solution
words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'
p backwards_sentence