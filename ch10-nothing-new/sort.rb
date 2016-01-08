
# bubble-sort:

# def sort(arr)
#
#   if arr.size <= 1
#     return arr
#   end
#
#   swapped = true
#   while swapped
#     swapped = false
#     0.upto(arr.size - 2) do |index|
#       if arr[index] > arr[index+1]
#         arr[index],arr[index+1] = arr[index+1],arr[index]
#         swapped = true
#       end
#     end
#   end
#
#     arr
#
# end


def sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(original_array, sorted_array)

    # if the original array is empty because we've pushed everything out, its time to return the sorted one
    # becuase this is recursive, the next time around, original_array is actually working_array
    if original_array.count <= 0
      return sorted_array
    end

    # we grab whichever item is at the end of our array as an anchor and call it smallest
    smallest = original_array.pop
    # and we set up an array to keep unsorted bits in
    working_array = []

    # now we go over the array item-by-item
    original_array.each do |w|
      # if the item we're looking at is smaller than our anchor
      if w < smallest
        # we put our anchor in working array becuase it's bigger
        working_array.push(smallest)
        # and we reset the anchor to the thing we're looking at - so as this goes through item-by-item,
        # 'smallest' should end up as the smallest
        smallest = w
      else
        # otherwsise the thing we're looking at is bigger, so we put it into our working array
        working_array.push(w)
      end
    end

    # at this point our anchor is the smallest element in the array, so we push it into our sorted array
    sorted_array.push smallest
    # and then we go through the working array again, doing the same thing.
    recursive_sort(working_array, sorted_array)

end


p sort(('A'..'Z').to_a.shuffle)
