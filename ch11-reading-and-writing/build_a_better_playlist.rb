def music_shuffle filenames
  total = filenames.length
  left = 0
  if total % 2 == 0
    right = total/2
  else
    right = (total/2)
  end
  shuff_playlist = []
    while shuff_playlist.length < total || left < total/2#alternate left to right
      shuff_playlist << filenames[right]
      shuff_playlist << filenames[left]
      left += 1
      right += 1
    end


  print shuff_playlist.sort
  puts
  #print rand(0..shuff_playlist.length-1)
  puts left
  puts right



end


songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
     'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
num = [1,2,3,4,5,6,7]

music_shuffle(num)
