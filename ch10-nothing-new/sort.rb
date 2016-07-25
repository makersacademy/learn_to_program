def sort arr
  recursiveSort arr, []
end

def recursiveSort unsortedArr, sortedArr

  if unsortedArr.length <= 0
    return sortedArr
  end

  item = unsortedArr.pop
  toSort = []

  unsortedArr.each do |x|
    if x < item
      toSort.push item
      item = x
    else
      toSort.push x
    end
  end

  sortedArr.push item
  recursiveSort toSort, sortedArr
end

myArr = ["hello","goodbye", "dog", "xenophobic", "Ruby","London", "magic"]

puts(sort(myArr))
puts "************"
puts(myArr.sort)
