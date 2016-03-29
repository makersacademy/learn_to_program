def dictionary_sort arr, sorted_array=[]
  unless arr.empty?
  	minimum_index = arr.index{|y| y.downcase == arr.map{|x| x.downcase}.min }
  	sorted_array.push(arr[minimum_index])
  	arr.delete_at(minimum_index)
  	dictionary_sort(arr,sorted_array)
  end
  sorted_array
end