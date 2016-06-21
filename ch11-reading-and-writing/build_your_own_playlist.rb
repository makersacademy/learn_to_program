require_relative '../ch10-nothing-new/shuffle.rb'

MUSIC_SOURCE_DIR = '/Users/newuser/Desktop/Makers/precourse/week2/learn_to_program/' +
                   'scrap_work/music/'

def search(file_extension)
  arr = []
  if(File.directory?(MUSIC_SOURCE_DIR)) # Check if dir exists
    Dir.chdir MUSIC_SOURCE_DIR
    arr = Dir.glob("*.[Mm][Pp][3]")
  end
  if arr.length > 0
    arr = shuffle(arr)
    write(arr)
  end
end

def write(arr)
  playlist_name = MUSIC_SOURCE_DIR + 'my_playlist.m3u'
  overwrite = true
  if(File.exist? playlist_name)
    puts 'Playlist already exists! Please type yes or no to overwrite.'
    overwrite = is_overwrite
  end

  if(overwrite)
    File.open playlist_name, 'w' do |f|
      arr.each do |a|
        f.write(a + "\n")
      end
    end
  end
end

def is_overwrite
  user_input = gets.chomp.downcase

  if(user_input == 'yes')
    return true
  elsif(user_input == 'no')
    return false
  else
    puts 'Please type yes or no'
    is_overwrite
  end
end

# search, shuffle, write
search('*.mp3')
