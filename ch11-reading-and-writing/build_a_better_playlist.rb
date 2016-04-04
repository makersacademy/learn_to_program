def music_shuffle filenames

filenames = filenames.sort
len = filenames.length

2.times do
  left_index = 0
  right_index = len/2
  shuffled = []

  while shuffled.length < len
    if shuffled.length % 2 == 0
      shuffled << filenames[right_index]
      right_index = right_index + 1
    else
      shuffled << filenames[left_index]
end
end

filenames = shuffled

array = []
cut = rand(len)
index = 0

while index < len
  array << filenames[(index+cut)%len]
  index = index + 1
end
array
end
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts (music_shuffle(songs))
