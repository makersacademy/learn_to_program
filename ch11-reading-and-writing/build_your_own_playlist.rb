def shuffle arr
 a = arr.sort_by{rand}
 count = 0
while count < arr.size
  arr.zip(a).each do |array1_var, array2_var|
     if array1_var == array2_var
         a = arr.sort_by{rand}
         count = 0
     else
         count += 1
     end
  end
end
print a
end

def music_shuffle filenames
  Dir.chdir 'C:\Users\Jamie\Music\PlaylistProgram'

  playlist_scope =  shuffle(Dir['C:\Users\Jamie\Music\**\*.mp3'])

  playlist = 'playlist.m3u'
  
  File.open playlist, 'w' do |a|
    playlist_scope.each do |b|
    a.write b + "\n"
    end
  end
  puts "New playlist has been created"
end