def sort arr
  return arr if arr.length <= 1 # if the array only has one word it does not need sorting

  middle = arr.pop # taking the last word in the array and assigning it to var middle
  less = arr.select{|x| x < middle} # if word comes before the word in 'middle' we create a new array called less
  more = arr.select{|x| x >= middle} #if word comes after the word in 'middle' we create a new array called more

  sort(less) + [middle] + sort(more) # we then sort array 'less', then add it to array 'middle', then sort array 'more' and add it after array 'middle'
end