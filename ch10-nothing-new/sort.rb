def mainSort (arr,sorted_array)
  # your code here
  if arr.size() == 0
    sorted_array
  else
    i = 0
    while i < arr.size() - 1
      if (arr[i] < arr[i + 1])
         temp = arr[i]
         arr[i] = arr[i + 1]
         arr[i + 1] = temp
      end
      i += 1
    end
    sorted_array.push(arr.pop)
    mainSort(arr,sorted_array)
  end

end

def sort(arr)
  mainSort(arr,[])
end
