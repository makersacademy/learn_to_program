
def dictionary_sort(arr)
  sort_index = []
  hash =  Hash[[*0..(arr.size-1)].zip arr.map(&:downcase) ]

  while !hash.empty?
    low = hash.values.min
    sort_index << hash.key(low)
    hash.delete(hash.key(low))
  end

  sort_index.map{|x| arr[x]}
end

p dictionary_sort(["hey", "Hey", "How", "zz", "are", "you", "you"])