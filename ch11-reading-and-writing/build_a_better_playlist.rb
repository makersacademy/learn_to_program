# Chris Pine's solutions with additional comments

def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_idx = 0       # index of next card in left pile
    r_idx = len / 2 # index of next card in right pile
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0     # if number of shuf items is 0 or even
        shuf << filenames[r_idx]  # add card from right pile
        r_idx += 1
      else                        # if number of shuf items is odd
        shuf << filenames[l_idx]  # add card from left pile
        l_idx += 1
      end
    end
    filenames = shuf              # replaces current playlist with shuffled playlist
  end

  #cutting the deck
  arr = []
  cut = rand(len)   # random cut
  idx = 0

  while idx < len
    arr << filenames[(idx + cut) % len]  # (% len) is to ensure the index will not be out of bounds. if idx = 3 and rand returns 10, filenames[13] would return nil unless % is used.
    idx += 1
  end

  arr
end