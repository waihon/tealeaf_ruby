def execute(&block)
  # Nothing will be printed to the screen because the block is never activated
  # with the .call method. This method will return a Proc object.
  block
end

execute { puts "Hello from inside the execute method!" }