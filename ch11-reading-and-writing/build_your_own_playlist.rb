Dir.chdir '/Users/andrewcookson/Makers/Tests/music/shuffled'

string = Dir['/Users/andrewcookson/Makers/Tests/music/**/*.mp3']

filename = 'newplaylist.ogg'

  File.open filename,'w' do |f|
    f.write string
  end

puts File.read filename
