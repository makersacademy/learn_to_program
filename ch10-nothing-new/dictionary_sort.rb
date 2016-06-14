def dictionary_sort arr

recursive_sort arr, []

end

def recursive_sort unsorted_arr, sorted_arr

return sorted_arr if unsorted_arr.length <= 0

sml = unsorted_arr.pop
still_unsorted = []

unsorted_arr.each do |t|
  if t.downcase < sml.downcase
    still_unsorted.push sml
    sml = t
  else
    still_unsorted.push t
  end
end

  sorted_arr.push sml
  recursive_sort still_unsorted, sorted_arr
end

puts dictionary_sort ["apple","banana","starfruit","watermelon","COCOCNUT","Peach","lemon","LIME"]
