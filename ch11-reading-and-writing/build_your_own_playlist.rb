# the method below pushes out a shuffled playlist from my select directories, and the .m3u file shows up in on itunes, but it's not able to play it due to the minus- and quotation marks'

def playlist
    require 'yaml'

    Dir.chdir '/Users/chris/coding/makers/week2/learn_to_program/ch11-reading-and-writing'

    mp3_names = Dir['/Users/chris/Downloads/*.mp3']

    puts 'What do you want to call this playlist?'

    playlist_name = gets.chomp
    filename = "#{playlist_name}.m3u"

    mp3_array = []

    mp3_names.each do |name|
        mp3_array.push name
    end

    shuffled_mp3s = mp3_array.shuffle #might as well use .shuffle

    test_mp3s = shuffled_mp3s.to_yaml

    File.open filename, 'w' do |f|
        f.write test_mp3s
        end


    puts shuffled_mp3s
end

playlist