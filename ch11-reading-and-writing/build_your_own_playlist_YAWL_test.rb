require "yaml"

#directory where playlist will be
#Dir.chdir ' ~/Music/'

#directory where songs will be
song_arr = Dir[' ~/Music/Kendrick_Lamar_To_Pimp_A_Butterfly/*.mp3' ]

#convert songs into a yaml string
song_string = song_arr.to_yaml

#write the songs to the playlist
File.open 'kendrick_playlist.m3u' do |playlist|
  playlist.write song_string
end

#not sure how this part of YAML works
read_song_string = File.read 'kendrick_playlist.m3u'

read_song_array = YAML::load read_song_string

puts 'kendrick_playlist.m3u'
