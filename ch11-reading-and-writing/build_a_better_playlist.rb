#Chris Pine solution: specs were so specific, seemed to only
#be able to pass with this solution.
#Come back to this if you have time.


def music_shuffle filenames

  filenames = filenames.sort
  filenames_length = filenames.length

  2.times do #shuffling twice
    l_idx = 0 # index of next card in left pile
    r_idx = filenames_length/2 # index of next card in right pile
    shuf = []

    while shuf.length < filenames_length
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end
  # cuts the deck
  arr = []
  cut = rand(filenames_length) # index of card to cut at
  idx = 0

  while idx < filenames_length
    arr.push(filenames[(idx+cut)%filenames_length])
    idx = idx + 1
  end

  arr
end
