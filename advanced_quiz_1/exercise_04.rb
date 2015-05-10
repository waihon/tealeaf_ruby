# Waihon's solution
def uuid
  hex = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  hex.sample(8).join + "-" + 
    hex.sample(4).join + "-" + 
    hex.sample(4).join + "-" + 
    hex.sample(4).join + "-" + 
    hex.sample(12).join
end

5.times { puts uuid }
puts

# Tealeaf's solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    #uuid += '-' if index < sections.size - 1
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

5.times { puts generate_UUID }