def shuffle arr
   recursive_shuffle arr, []
end

def getsAry
  ary = []
  while true
    reply = gets.chomp
    if reply == ""
      return ary
      break
    end
    ary.push reply
  end
end

def recursive_shuffle unshuffled_array, shuffled_array
  prng = Random.new
  if unshuffled_array.length == 0
    return shuffled_array
  else
    randomNumber = prng.rand(unshuffled_array.length)
    shuffled_array.push(unshuffled_array[randomNumber])
    unshuffled_array.delete_at(randomNumber)
  end
  recursive_shuffle unshuffled_array, shuffled_array
end

#puts "Input array one item at a time, enter twice to end"
#ary = getsAry
#puts shuffle ary

# ary = %w( Aston_Villa Birmingham Chelsea Doncaster Everton Falkirk Gateshead Hungerford)
# p ary
# p shuffle ary

