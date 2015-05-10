class String
  # Waihon's solution
  def my_map_words!
    words_array = self.split()
    words_array.map! { |word| yield(word) }
    self.replace(words_array.join(" "))
  end

  # Tealeaf's solution
  def map_words!
    punctuation = self.match(/\p{Punct}$/)[0] || ''
    words = self.split(/\W/)
    words.map! { |word| yield word }
    self.replace(words.join(" ") + punctuation)
  end
end

statement = "Herman Munster is a BIG BIG man."
statement.map_words! { |word| word.reverse }
p statement