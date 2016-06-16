def shuffle arr

# Version based on Fisher Yates Shuffle - inside-out method

  i = arr.length

  while i > 1
    i = i - 1
    random = i*rand
    arr[random], arr[i] = arr[i], arr[random]
  end


# # Version based on Fisher Yates Shuffle - original method
#ran_arr = []

#  while arr.length > 0
#    random = arr[arr.length*rand]
#    ran_arr.push random
#    arr.delete_if{|i|i==random}
#  end

# arr = ran_arr
# puts arr
puts arr
end

shuffle ['Zebra','Lion','Aardvark','Bear','Panda']




=begin
# Write a shuffle method that takes an array
# and returns a totally shuffled version

# What method can we use for iterating through items in an array?

# Iteraties through the index of array - value after comma is argument
 arr.each_index {|x| print x, " and "}

# Iterates through values of array - value after comma is argument
 arr.each {|x| print x, " and "}

# How do we shuffle anything in ruby? Look at rand and rand_index

puts rand

# Write down the numbers from 1 through N.
arr = ['Zebra','Lion','Aardvark','Bear','Panda']

# Pick a random number k between one and the number of unstruck numbers remaining (inclusive).

random = arr[arr.length*rand]

# Counting from the low end, strike out the kth number not yet struck out,
# and write it down at the end of a separate list.

ran_arr = []
ran_arr.push random
arr.delete_if{|i|i==random}

# Repeat from step 2 until all the numbers have been struck out.

while arr.length > 0
end

# The sequence of numbers written down in step 3 is now a random permutation of the original numbers.
=end
