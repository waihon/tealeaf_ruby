def tricky_method!(a_string_param, an_array_param)
  #a_string_param += "rutabega"
  a_string_param.replace(a_string_param + "rutabega")
  an_array_param << "rutabega"
end

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

a_string_param, an_array_param = not_so_tricky_method(my_string, my_array)
puts "The returned string looks like this: #{a_string_param}"
puts "The returned array looks like this: #{an_array_param}"
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
puts

tricky_method!(my_string, my_array)
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

