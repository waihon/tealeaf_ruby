def color_valid
  # if color == "blue" || color == "green"
  #   true
  # else
  #   false
  # end

  # Waihon's solution
  (color == "blue" || color == "green") ? true : false

  # Tealeaf's solution
  color == "blue" || color == "green"  
end