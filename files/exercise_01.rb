SIMPLE_FILE = "simple_file.txt"
ORIGINAL_FILE = "original_file.txt"

simple_content = File.read(SIMPLE_FILE)

original_file = File.new(ORIGINAL_FILE, "w+")
File.open(original_file, "a") do |file|
  file.puts simple_content
end

original_content = File.read(original_file)
p original_content
