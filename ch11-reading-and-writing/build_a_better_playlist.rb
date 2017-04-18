def music_shuffle filenames
  shuffled = filenames
  2.times do
    #pile shuffle first
    new_shuffle = []
    piles = 3+rand(5)
    for i in 0...piles do
      count = 0
      while (i + (count*piles)) <= (shuffled.length-1)
      	new_shuffle << shuffled[i+(count*piles)]
      	count += 1
      end
    end
    shuffled = new_shuffle.clone

    #interleave
    new_shuffle = []
    for i in 0...shuffled.length/2 do
      new_shuffle << shuffled[i]
      new_shuffle << shuffled[shuffled.length/2+i]
    end
    new_shuffle << shuffled.last if shuffled.length%2==1
    shuffled = new_shuffle.clone

    #cut
    cut = rand(shuffled.length)
    shuffled = shuffled[cut..shuffled.length] + shuffled[0...cut]
  end

  shuffled
end