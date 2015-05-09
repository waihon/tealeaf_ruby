require 'pry'

class String
  # Waihon's solution
  def shorten(limit)
    str = self.dup
    if str.length > limit
      str = self[0..(limit-1)]
      str[(limit-3)..(limit-1)] = "…"
    end
    str
  end

  def shorten!(limit)
    if self.length > limit
      self.replace(self[0..(limit-1)])
      self[(limit-3)..(limit-1)] = "…"
    end
    self
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
end

batman = "Batman"
p batman.shorten(32)
p batman
p batman.short_version(32)
p batman
p batman.shorten!(32)
p batman

comic = "Comic book superhero who fights crime while wearing a costume loosely based on a bat"
p comic.shorten(32)
puts comic
p comic.short_version(32)
p comic
p comic.shorten!(32)
puts comic
puts ""

characters = [
  { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
  { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
  { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" }, 
  { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
]

# Waihon's solution
LIMIT = 32
characters.each do |character|
  puts "#{character[:character].shorten(LIMIT)} | #{character[:real_name].shorten(LIMIT)} | #{character[:description].shorten(LIMIT) }"
end

# Author's solution
characters.each { |character| p character.values.map { |value| value.short_version(32) }.join("    ") }