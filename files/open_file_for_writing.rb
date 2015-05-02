FILENAME = "simple_file.txt"

my_file = File.new(FILENAME, "w+")
my_file.close

# Ruby will automagically close the file if the open method is called with a block.
File.open(FILENAME, "w") { |file| file.write("Adding first line of text") }


content_string = File.read(FILENAME)
p content_string      #=> "Adding first line of text"
content_array = File.readlines(FILENAME)
p content_array       #=> ["Adding first line of text"]

simple_file = File.open(FILENAME, "w+")
simple_file.puts("Another example of writing to a file.")
content_string = simple_file.read
p content_string      #=> ""
simple_file.close

content_string = File.read(FILENAME)
p content_string      #=> "Another example of writing to a file.\n"

File.open(FILENAME, "a+") do |file|
  file << "Here we are with a new line of text"
end

File.readlines(FILENAME).each do |line|
  puts line
end

File.open(FILENAME, "a+") do |file|
  file.write "Writing to files in Ruby is simple."
end

File.readlines(FILENAME).each_with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end