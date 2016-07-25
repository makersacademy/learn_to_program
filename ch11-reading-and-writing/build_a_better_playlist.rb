# After I solved this one "my way" I found he did something a bit different. I didn't do it the Chris Pine way. My thought process was to chop the big playlist up into sorted chunks and then to shuffle within those sorted chunks. I then ask the user how many playlists and chunks he / she wants and then I get to work! I create a separate bunch of playlists using the picure downloading code ... 

require '/Users/mfperkins/Projects/learn_to_program/ch10-nothing-new/shuffle.rb'

# 1) Specify the directory where I want to store my playlist

Dir.chdir '/Users/mfperkins/Projects/learn_to_program/Playlist'

# 2) find all my music

@trackz = Dir['/Users/mfperkins/music/iTunes/iTunes Media/Music/**/*.mp3']
@filename = 'myNewPlaylist.m3u'

def music_shuffle input


  sortedTrackz = input.sort
  puts "What shall we call this batch of playlists?"
  batch_name = gets.chomp
  puts "And how many shuffled playlists do you want?"
  count = gets.chomp.to_i
  numShuffles = (sortedTrackz.length).to_i / count
  choppedTrackz = sortedTrackz.each_slice(numShuffles).to_a
  puts

  print "Creating #{choppedTrackz.length} shuffled playlists out of #{@trackz.length} files ..."

  playlistNum = 0

  choppedTrackz.each do |x|
    shuffledChunk = shuffle(x)
    new_name = if playlistNum < 10
      "#{batch_name}0#{playlistNum}.m3u"
    else
      "#{batch_name}#{playlistNum}.m3u"
    end
    File.open new_name, 'w' do |z|
      shuffledChunk.each do |y|
      print '.' ## sweet a progress bar! :)
      z.write y+"\n"
      end
    end
    playlistNum += 1
  end

  puts
  puts "Good work! Done!"

end

music_shuffle(@trackz)
