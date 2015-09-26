require 'pathname'

# rewritten to use Chris Pine's shuffle algorithm

def music_shuffle filenames

  return [] if filenames.empty? # get the empty case out of the way
  
  # initialise shuffle
  filenames.sort!
  len = filenames.length
  
  # do the shuffle
  2.times do
    leftpile = filenames[0..(len/2 - 1)]
    rightpile = filenames[len/2..-1]
    filenames = []
    while !leftpile.empty? do
      filenames << rightpile.shift
      filenames << leftpile.shift
    end
    filenames = filenames + rightpile # adds final 'card' if len is odd
  end

  #cut the 'deck' at random
  cutpoint = rand(len)
  filenames = filenames[cutpoint..-1] + (cutpoint == 0 ? [] : filenames[0..(cutpoint-1)])
  
end

# this one shuffles avoiding consecutive tunes of the same genre wherever possible
# first we pick tunes at random but always switching genre
# when we can no longer do this we insert the remaining tunes in random places

def my_music_shuffle filenames
  
  return [] if filenames.empty? # get the empty case out of the way
  
  # split each filename into [path, file]
  filenames.map! {|name| Pathname.new(name).split}
  filenames.map! {|name| [name[0].to_s, name[1].to_s]}

  # initialise shuffle
  shufflednames = []
  tailend_flag = false
  pick = rand(filenames.length)
  
  # do the shuffling
  while !(filenames == []) do
    
    # stick pick on the end unless tailend flag is raised, in which case insert randomly
    if !tailend_flag then shufflednames << filenames[pick] else
      shufflednames.insert(rand(shufflednames.length), filenames[pick])
    end
    filenames.delete_at(pick)
    
    # set 'masknames' to list everything of a different genre
    masknames = filenames.select {|name| name[0] != shufflednames[-1][0]} 
    
    # find a new pick, raising the tailend flag if we only have one genre left
    if !filenames.empty? then
      if !masknames.empty? then
        pickname = masknames.sample # pick a tune from a different genre
        pick = filenames.index(pickname) # find it in 'filenames' and point 'pick' to it
      else
        pick = rand(filenames.length) # pick any tune
        tailend_flag = true
      end
    end
      
  end # ends while loop
      
  #output the filenames merged back into strings
  shufflednames.map! {|name| name[0].to_s + '/' + name[1].to_s} 
      
end

Dir.chdir '/home/nitrous/music'

music_files = Dir['**/*.mp3']

playlist = music_shuffle(music_files)

File.open 'random_playlist.m3u', 'w' do |file|
  while !playlist.empty? do
    file.write playlist.shift + "\n"
  end
end

