def music_shuffle filenames

  filenames = filenames.sort
  numbers = filenames.length

2.times do
  l_idx = 0
  r_idx = numbers/2
  shuff = []

  while shuff.length < numbers
    if shuff.length % 2 == 0
      shuff.push(filenames[r_idx])
      r_idx = r_idx + 1
    else
      shuff.push(filenames[l_idx])
      r_idx = r_idx + 1
    end
end
filenames = shuff
end

arr = []
cut = rand(numbers)
idx = 0
while idx < len
  arr.push(filenames[idx+cut)%numbers])
  idx = idx + 1
end
arr
end
