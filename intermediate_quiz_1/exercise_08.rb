# Own solution
class String
  def titleize
    string_array = self.split(" ")
    string_array.map! { |string| (string + " ").capitalize }
    # Remove trailing space created by the above hack.
    string_array.join[0..self.length]
  end
end

str = "monthly salary payment for domestic helper."
p str.capitalize
p str.titleize

# Author's solution
words.split.map { |word| word.downcase.capitalize }.join(' ')