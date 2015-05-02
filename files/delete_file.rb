def file_exist(filename)
  file = File.open(filename, "r")
  unless file.nil?
    puts "#{filename} exists"
  else
    puts "#{filename} does not exist"
  end
  file.close
end

FILENAME1 = "dummy_file1.txt"
FILENAME2 = "dummy_file2.txt"

File.new(FILENAME1, "w+")
file_exist(FILENAME1)

File.new(FILENAME2, "w+")
file_exist(FILENAME2)

File.delete(FILENAME2)
file_exist(FILENAME1)
file_exist(FILENAME2)