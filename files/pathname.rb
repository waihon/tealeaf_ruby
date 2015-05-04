require "pathname"

SIMPLE_FILE = "simple_file.txt"

f = File.new(SIMPLE_FILE, "r")
pn = Pathname.new(f)
p pn.extname
p File.extname(SIMPLE_FILE)
