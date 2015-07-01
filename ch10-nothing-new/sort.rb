# Method syntax
# Push: array.push(item) adds item to the end of array
# Insert: array.insert(index, item) inserts item at the index position provided
# Index: array.index(value) checks for value in array & returns the index position if present (nil otherwise)

def sort arr
  arr=arr.each {|item| item.downcase!}
  puts "Array being sorted: #{arr}"
  sortedArray = []
  arr.each do |item|
    if sortedArray.empty?
      sortedArray=sortedArray.push(item)
    else
      if item>sortedArray.last
        sortedArray=sortedArray.push(item)
      else
        sortedArray.each do |comparison|
        if item < comparison
          sortedArray=sortedArray.insert(sortedArray.index(comparison), item)
          break
        end
        end
      end
    end
  end
  sortedArray
end

#Test code:
# array=['One', 'Two', 'three', 'a', 'B', 'ceee', 'Zebra']
# sorted = sort array
# puts "The sorted array: #{sorted}"

