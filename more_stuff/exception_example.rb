names = ["Bob", "Joe", "Steve", nil, "Frank"]

names.each do |name|
  begin
    # Perform some dangerous operation
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    # Do this if operation fails
    # Log the error
    puts "Something went wrong!"
  end
end