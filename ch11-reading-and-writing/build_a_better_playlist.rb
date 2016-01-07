def music_shuffle filenames
  # your code here
  #sort completely
  #then take out [0] then [4] and then [2] [3]
  filenames.sort!
  shuffle = []
  2.times do
    #puts filenames.length
    while filenames.length > 0
      shuffle << filenames.shift
      shuffle << filenames.pop if filenames.length > 0
      #puts shuffle.join(' ')
    end
    #puts shuffle.join(' ')
    (filenames << shuffle.pop(shuffle.length/2)).flatten!
    (filenames << shuffle).flatten!
    #puts filenames.join(' ')
    shuffle = []
  end
  puts filenames.join(' ')
  return filenames

end

#music_shuffle ['aa/bbb', 'aa/ccc', 'aa/ddd',
         #'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
music_shuffle [1,2,3,4,5,6,7,8,9,10]
