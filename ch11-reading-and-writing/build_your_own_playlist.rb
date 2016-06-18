#shuffle method:

def shuffle (array)
  n = array.length
  shuffled = Array.new(n)
  shuffled.fill{|x| (array[rand(n)])}
  short_shuffle = shuffled.uniq!
  remainders = array - short_shuffle
  short_shuffle << remainders
  puts short_shuffle
end

#playlist:

Dir.chdir '/Users/jessicajones/music'
my_music = Dir['**/**.m4a']
my_music.map! do |name|
  '/Users/jessicajones/music/' + name
end

shuffle(my_music)

filename = "makers_playlist.m3u"
File.open filename, 'w' do |f|
  f.write my_music
end

puts my_music
