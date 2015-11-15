# I found out an algorithm called Knuth-Fischer-Yates or Knuth shuffle,
# which main goal is to shuffle elements within a finite set of elements in an Array.

  def music_shuffle filenames
    size = filenames.size

      until size == 0
        k = rand(size)
        size -= 1
        filenames[size], filenames[k] = filenames[k], filenames[size]
      end

      filenames

  end


# test_array = *(1..10)
# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#      'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
#
# p music_shuffle(songs)
