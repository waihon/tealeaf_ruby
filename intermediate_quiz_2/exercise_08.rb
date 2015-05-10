class String
  # Waihon's solution
  def pretty_shorten(limit)
    str = String.new
    str_array = self.split(" ")

    index = 0
    new_length = str_array[index].length
    while new_length < limit do
      if index == 0
        str += str_array[index]
      else
        str += (" " + str_array[index])
      end
      index += 1
      if index < str_array.count
        # Add 1 for a space
        new_length += (str_array[index].length + 1)
      else
        break
      end
    end
    str += "…"
  end

  def pretty_shorten!(limit)
    str = String.new
    str_array = self.split(" ")

    index = 0
    new_length = str_array[index].length
    while new_length < limit do
      if index == 0
        str += str_array[index]
      else
        str += (" " + str_array[index])
      end
      index += 1
      if index < str_array.count
        # Add 1 for a space
        new_length += (str_array[index].length + 1)
      else
        break
      end
    end
    str += "…"
    self.replace(str)
  end

  # Author's solution
  def short_version(length)
    result = self.dup

    starting_length = self.length
    if starting_length > length
      result = result[0, length - 1]
      result += "…"
    end
    result
  end

  def pretty_short_version(length)
    result = self.dup

    starting_length = self.length
    if starting_length > length
      length -= 1   # Leave room for ellipsis
      words = result.split
      result = words.shift
      result = result[0, length] if result.length > length
      result += " " + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
      result += "..."
    end
    result    
  end
end

sentence = "Don't forget to leave room for and append the ellipsis at the end."
shortened_sentence = sentence.pretty_shorten(50)
puts sentence
puts shortened_sentence
puts

sentence = "Don't forget to leave room for and append the ellipsis at the end."
shortened_sentence = sentence.pretty_short_version(50)
p sentence
p shortened_sentence
puts

sentence = "Don't forget to leave room for and append the ellipsis at the end."
shortened_sentence = sentence.pretty_shorten!(50)
puts sentence
puts shortened_sentence
