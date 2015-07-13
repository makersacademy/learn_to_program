def findIndex(downcaseItem, arr)
  arr.index(downcaseItem)
end

def dictionary_sort arr
  downArr=[]
  arr.each_index {|i| downArr[i]=arr[i].downcase}
  dummyArray=[]
  sortedArray = []
  downArr.each do |item|
    if sortedArray.empty?
      dummyArray=dummyArray.push(item)
      sortedArray=sortedArray.push(arr[findIndex(item, downArr)])
    else
      if item>dummyArray.last
        dummyArray=dummyArray.push(item)
        sortedArray=sortedArray.push(arr[findIndex(item, downArr)])
      else
        dummyArray.each do |comparison|
          if item < comparison
            dummyArray=dummyArray.insert(dummyArray.index(comparison), item)
            # We need to take 1 off the index for sortedArray in the index method because it searches in
            # dummyArray - which has just had an item squeeze in front of the item we are looking for as
            # a result of being in this conditional
            sortedArray=sortedArray.insert(dummyArray.index(comparison)-1, arr[findIndex(item, downArr)])
            break
          end
        end
      end
    end
  end
  return dummyArray, sortedArray
end

#Test code:
# array=['One', 'Two', 'three', 'a', 'B', 'ceee', 'Zebra']
# (dummy, sorted) = dictionary_sort array
# puts "The array: #{array}"
# puts "The sorted array: #{sorted}"