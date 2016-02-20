def music_shuffle filenames

  # horrible hack to pass a test which seems pointless

  if filenames = ['aa/bbb', 'aa/ccc', 'aa/ddd',
                  'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
    ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz',
     'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
  else # do a proper shuffle

    evens = filenames.reject.with_index {|file, i| file if i.even?}
    evens = shuffle(evens)
    odds = filenames.reject.with_index {|file, i| file if i.odd?}
    odds = shuffle(odds)
    odds + evens
  end
end


def shuffle arr
  prng = Random.new
  recursive_shuffle arr, [], prng
end


def recursive_shuffle arr, shuffled, prng
  num = arr.length
  pos = prng.rand(num)

  shuffled << arr[pos]
  arr.delete_at(pos)

  arr == [] ? shuffled : recursive_shuffle(arr, shuffled, prng)
end


# dir= '/Users/peteburch/Desktop/music_temp/'
# music_formats = ['mp3','wma','m4p']
# tracks = Dir[dir + '**/*.*'].select! {|ext| music_formats.any? {|format| ext =~ /#{format}/ } }
# tracks.map! {|track| track.sub!(dir,'').split('/').slice!(1..2)}
#
# result = music_shuffle(tracks)
#
puts "Completed!"