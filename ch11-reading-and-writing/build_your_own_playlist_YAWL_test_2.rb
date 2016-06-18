require "yaml"

#assign songs here as directory paths not working for some reason?
song_arr = [
  "01 Wesley's Theory (feat. George Clinton & Thundercat).mp3",
  "02 For Free (Interlude).mp3",
  "03 King Kunta.mp3",
  "04 Institutionalized (feat. Bilal, Anna Wise & Snoop Dogg).mp3",
  "05 These Walls (feat. Bilal, Anna Wise & Thundercat).mp3",
  "06 u.mp3",
  "07 Alright.mp3",
  "08 For Sale (Interlude).mp3",
  "09 Momma.mp3",
  "10 Hood Politics.mp3",
  "11 How Much a Dollar Cost (feat. James Fauntleroy & Ronald Isley).mp3",
  "12 Complexion (A Zulu Love) [feat. Rapsody].mp3",
  "13 The Blacker the Berry.mp3",
  "14 You Ain't Gotta Lie (Momma Said).mp3",
  "15 i.mp3",
  "16 Mortal Man.mp3"
]

filename = "kendrick_playlist.m3u"
#convert songs into a yaml string
test_song_string = song_arr.to_yaml

#write the songs to the playlist
File.open filename do |playlist|
  playlist.write song_string
end

#not sure how this part of YAML works
read_song_string = File.read filename

read_song_array = YAML::load read_song_string
