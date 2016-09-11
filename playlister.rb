Dir.chdir 'C:\Users\Tom\Music\Wink Wink\shuffler'

choosen_tracks = Dir['C:/Users/Tom/Music/Wink Wink/Wink Wink Mp3/Technoish/*.mp3']

puts "What would you like to call this shuffle?"

shuffle_name = gets.chomp

puts
print "Downloading #{choosen_tracks.length}"

track_number = 1


choosen_tracks.each do |name|
  print '!'

  new_name = if track_number < 10
    "#{shuffle_name}0#{track_number}.mp3"

  else
    "#{shuffle_name}#{track_number}.mp3"
  end

  if File.exist? new_name
    puts "It seems that another file has the very same name! Bye bye!"
    exit
  else
    File.rename name, new_name

    track_number += 1

  end

  end