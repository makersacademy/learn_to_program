def music_shuffle filenames

  arr = filenames.sort
  l = filenames.length
  mid = l/2
  
  5.times do |i|
  li = 0
  ri = mid
  shuf = []
  while shuf.length < l
    if shuf.length%2 == 0
      shuf << arr[li]
      li+=1
    else
      shuf << arr[ri]
      ri+=1
    end
    
  end #while
  #puts shuf
  #print shuf
  arr = shuf
end # times do

  
  cut = rand(l)
  l.times do |i|
    filenames[(cut+i)%l] = arr[i]
  end
  filenames
end # end of def

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))

=begin

=end
