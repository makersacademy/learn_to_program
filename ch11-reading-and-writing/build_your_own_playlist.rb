trackNames = ["music/Jazz/Monk--Nutty/track08.ogg",
              "music/Jazz/Monk--London_Collection_1/track05.ogg",
              "music/Jazz/Monk--Nutty/track13.ogg",
              "music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"]

playListPath = '/Users/UpstatePedro/pmh_gd/Projects/learn_to_program/ch11-reading-and-writing/playList.m3u'
playList = []
numTracks = trackNames.length

numTracks.times do
  if trackNames.length>1
    index = rand(trackNames.length)
    #copy the track into the playlist file
    track = trackNames[index]
    playList.push(track)
    # delete the track from the array
    trackNames.delete(track)
  else
    #what to do if there's only one track left (don't want random number!)
    #copy the remaining track into the playlist file
    track = trackNames[0]
    playList.push(track)
  end
end
puts "The final playlist: #{playList}"
File.open playListPath, 'w' do |f|
  f.write playList
end
