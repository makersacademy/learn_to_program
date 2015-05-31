
# the method 'shuffle'

# generate random number (max number = length of array), use the rand number
# as the index of 'tracks', push this song to playlist array

# use a counter = 0 to loop through the length of the array


def shuffle array
    playlist  = []
    tracks_length = array.length
    counter = 0
    
    while counter < tracks_length
        rand_num = rand(tracks_length)
        
        newNum = array[rand_num]
        
        playlist.push newNum
        
        counter += 1
    end
    
    #open (and create) playlistENG.m3u, write in playlist
    
    File.open 'playlistENG.m3u', 'w' do |f|
        f.puts playlist
    end
    
end


# identify and copy all "*.mp3" files into the file 'tracks'

tracks = Dir['/Users/elinnet/temp/Precourse_Week3_Ruby/music_files/*.mp3']


# call the shuffle method on tracks
shuffle tracks

# test to see file complete
puts 'Finished'