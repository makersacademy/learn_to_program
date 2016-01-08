
# def music_shuffle filenames
#
#   left = []
#   right = []
#   filenames.map.with_index do |f,i|
#
#     if i.even?
#       left << f
#     else
#       right << f
#     end
#
#   end
#
#     rand_split = rand(filenames.size)
#     p rand_split
#     arr = [left,right].flatten
#     [arr[rand_split..-1], arr[0..rand_split]].flatten
#
# end
#
# test_arr = ('a'..'i').to_a
# p music_shuffle(test_arr)

def music_shuffle filenames

filenames = filenames.sort
arr_length = filenames.length

  # Now we shuffle twice.
  2.times do
    left_index = 0 # index of next card in left pile
    right_index = arr_length/2 # index of next card in right pile
    shuffled = []
    while shuffled.length < arr_length
      if shuffled.length.even?
        # take card from right pile
        shuffled.push(filenames[right_index])
        right_index = right_index + 1
      else
        # take card from left pile
        shuffled.push(filenames[left_index])
        left_index = left_index + 1
      end
    end
    filenames = shuffled
  end

  ## And cut the deck.
  arr = []
  cut = rand(arr_length) # index of card to cut at
  index = 0
  while index < arr_length
    arr.push(filenames[(index+cut)%arr_length])
    index = index + 1
  end

  arr

end

songs = ('A'..'Z').to_a
puts music_shuffle(songs)
