def music_shuffle filenames
filenames = filenames.sort
len = filenames.length

2.times do #shuffle twice
    l_index = 0
    r_index = len / 2
    shuf = []
    
    while shuf.length < len
      if shuf.length % 2 == 0 #even number, right pile
          shuf.push(filenames[r_index])
          r_index = r_index + 1
      else
          shuf.push(filenames[l_index]) #odd number, left pile
          l_index = l_index + 1
      end
    end
    
    filenames = shuf
end

arr = []
cut = rand(len)
index = 0

while index < len
  arr.push(filenames[(index + cut)%len])
  index = index + 1
end
  
arr  


end
