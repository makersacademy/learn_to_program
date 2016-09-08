def music_shuffle filenames
  mix_up filenames, [], filenames.length
end

def mix_up arr, mixed, max
  count = max
  while count > 0
    index = rand(max)
    if mixed.length == 0 && arr[index] != nil
      mixed << arr[index]
      count -= 1
      arr.slice!(index)
    elsif arr[index] != nil && ((arr[index].split "/")[7] != (mixed[mixed.length-1].split "/")[7])
      mixed << arr[index]
      count -= 1
      arr.slice!(index)
    elsif (arr[index] != nil) && (arr.all? {|x| x == nil || ((x.split "/")[7] == (mixed[mixed.length-1].split "/")[7])})
      mixed << arr[index]
      count -= 1
      arr.slice!(index)
    end
  end
  return mixed
end
