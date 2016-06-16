def shuffle arr
  # I created my own shuffle called myshuffe that works recursively but it wont be accepted by rspec
  #So decided to submit this was as it allows it through
  arr.sort_by{rand}
end
puts (shuffle([1,2,3,4,5,6]))