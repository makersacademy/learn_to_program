#This Program creates a random playlist based on a music libary
#directory that holds music Music/Artist/Album/track
#Dir.chdir '/Users/lewis/music/iTunes/iTunes Media/'
#File type is hardcoded as MP3 but can be changed
#amout of tracks controlled by the times.do

#tracks = Dir['music/*/*/*.{MP3,mp3}']
tracks = Dir['/Users/lewis/music/iTunes/iTunes Media/music/*/*/*.{MP3,mp3}']

playlist = ''

10.times do
  playlist << "#{tracks.sample}\n"
end

puts playlist

Dir.chdir '/users/lewis/rubyprograms/playlist'
filename = "playlist#{Time.now}.m3u"

File.open filename, 'w' do |f|
  f.write playlist
end
