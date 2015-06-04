def shuffle array
  array.sort_by{rand}
end

Dir.chdir '/Users/Alex/Desktop/RubyMusic/'

music = shuffle(Dir['/Users/Alex/Desktop/RubyMusic/*.mp3'])

puts "What would you like to call your playlist?"

playlist_name = gets.chomp

puts
puts "Creating #{playlist_name} with #{playlist_name.length} songs..."

File.open "#{playlist_name}.m3u", 'w' do |f|
  music.each do |song|
    f.puts song
  end
end

puts "Done!"
