#  SHUFFLING ORDERED ARRAY BY RE-USING 
# PREVIOUSLY CREATED 'sort' METHOD 

#  SIMILARILY COULD HAVE USED THE 
# RECURSIVE 'sort' METHOD INSTEAD (OR 
# THE 'sort' METHOD FROM API)
# [ WELL, OR EVEN THE 'shuffle' method in API ]

def sort(arr)  
  i =0
  while i < arr.length 
    j = i + 1
    while j < arr.length
      if arr[i] > arr[j]
        arr[i]  , arr[j] = arr[j], arr[i] 
      end
      j += 1 
    end
    i += 1
 end
 arr
end 

def sort(arr)
  pre_sort(arr, [])
end

def shuffle(arr)
  # your code here
  arr.sort() {rand}
end

# TEST THIS...
arr = [1, 2, 3, 4, 5,6, 7]
puts shuffle(arr)