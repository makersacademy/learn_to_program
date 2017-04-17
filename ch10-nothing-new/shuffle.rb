# Shuffle Method

# 1. define the method shuffle so that it takes a sorted array of words
# 2. use .rand to randomly select a number to correlate to an array element
# 3. set an empty array to take the suffled words
# 4. set an empty array to take the still sorted words

#  iterate through the array elements to see if any of them match the random number
#   a)


def shuffle arr
  shuff_list = []

  while arr.length > 0
  rand_index = rand(arr.length)

  current_num = 0
  still_sorted = []

  arr.each do |word|
    if current_num == rand_index
      shuff_list.push word
    else
      still_sorted.push word
    end

    current_num = current_num + 1
  end

  arr = still_sorted
end

  shuff_list
end


puts (shuffle(['after', 'beef', 'cat', 'dodge', 'erryday', 'food', 'greens', 'heat']))
