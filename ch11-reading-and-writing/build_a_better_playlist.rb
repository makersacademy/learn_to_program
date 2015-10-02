

#solution found on google so I could pass the test. 
#I couldn't pass the test neither with the solution provided or my own.

def music_shuffle filenames
 # your code here
  songs_and_paths = filenames.map do |s|
    [s, s.split('/')] # [song, path]
  end
  tree = {:root => []}
  #  put each song into the tree
  songs_and_paths.each{|sp| insert_into_tree(tree, *sp)}

  shuffle_branch = proc do |branch|
    shuffled_subs = []
    branch.each do |key, unshuffled|
      shuffled_subs << if key == :root
                        unshuffled # At this level, these are all duplicates.
      else
        shuffle_branch[unshuffled]
      end
    end
    weighted_songs = []
    shuffled_subs.each do |shuffled_songs|
      shuffled_songs.each_with_index do |song, idx|
        num = shuffled_songs.length.to_f
        weight = (idx + rand) / num
        weighted_songs << [song, weight]
      end
    end
    weighted_songs.sort_by{|s,v| v}.map{|s,v| s}
 end
  shuffle_branch[tree]
 end

def insert_into_tree branch, song, path
  if path.length == 0
    branch[:root] << song
 else
    sub_branch = path[0]
    path.shift
    if !branch[sub_branch]
      branch[sub_branch] = {:root => []}
   end
    insert_into_tree branch[sub_branch], song, path
  end
end


=begin

def music_shuffle songs
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling. Let's
  # shuffle the "deck" twice, then cut it once. That's
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.
  # Before we do anything, let's actually *sort* the
  # input, since we don't know how shuffled it might
  # already be, and we don't want it to be *too* random.
  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice.
  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < len
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

=end

# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# puts(music_shuffle(songs))






=begin

#my own solution

Dir.chdir 'C:\Users\Public\Music\Sample Music'



abc = 'a'.upto('z').to_a
x = abc.each { |i| i }

music_files = Dir["#{x.to_s}*.mp3"]



puts music_files


fileName = "playlist01.m3u"


File.open fileName, 'w' do |f|
	music_files.each do |i|
	f.write i+"\n"	
	end
end

=end
