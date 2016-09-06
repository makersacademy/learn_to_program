Dir.chdir '/Users/jamessteel/Music/iTunes/iTunes Media/Apple Music'
def shuffle arr
 arr.sort_by{rand}
end


puts "building your nice playlist"
puts "What shall we call this one"
name = gets.chomp

music = shuffle(Dir['**/*.{m4p}'])
File.open "#{name.strip}.m3u", 'w' do |m|
 music.each do |f|
   m.write f + "\n"
 end
 end
 puts "Done"
