require 'Set'
def shuffle(arr)
  new_arr = arr.clone
  new_arr.reverse_each do |word|
    index = rand(new_arr.length)
    aux = word
    new_arr[new_arr.index word] = new_arr[index]
    new_arr[index] = aux
  end
  new_arr
end
