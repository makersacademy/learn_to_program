def music_shuffle filenames
filenames = filenames.sort
len = filenames.length
  #  Now we shuffle twice.
2.times do
l_idx = 0
r_idx = len/2 
shuf= []

  while shuf.length < len 
    if shuf.length%2 == 0
        #  take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
    else
        #  take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
    end 
end
    filenames = shuf
end
  #  And cut the deck.
arr = []
cut = rand(len) # index of card to cut at 
idx = 0
while idx < len 
  arr.push(filenames[(idx+cut)%len]) 
  idx = idx + 1
end
arr
end

=begin
def music_shuffle_filename(list)
  songs = list.sort
  count = list.length
  l_stack=0
  r_stack = l_stack/2
  shuffled = []

  while shuffled.length < count
    if shuffled.length%2 == 0
      shuffled << songs[l_stack]
      l_stack=+1
    else
      shuffled << songs[r_stack]
    end
  end

  arr = []
  cut = rand(count)
  stack = 0

  while stack < count
    arr << (shuffled[(stack+cut)%count])
  end
  arr

end

=end