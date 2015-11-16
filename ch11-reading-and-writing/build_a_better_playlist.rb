def music_shuffle filenames

  filenames = filenames.sort
  len = filenames.length


  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []

    while shuf.length < len
      if shuf.length%2 == 0
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end
  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end



# # I found out an algorithm called Knuth-Fischer-Yates or Knuth shuffle,
# # which main goal is to shuffle elements within a finite set of elements in an Array.
#
#   def music_shuffle filenames
#     size = filenames.size
#
#       until size == 0
#         k = rand(size)
#         size -= 1
#         filenames[size], filenames[k] = filenames[k], filenames[size]
#       end
#
#       filenames
#
#   end
#
#
# # test_array = *(1..10)
# # songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
# #      'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# #
# # p music_shuffle(songs)
