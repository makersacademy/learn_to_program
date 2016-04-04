def dictionary_sort(arr)
return arr if arr.length <= 1
  mid = arr.pop
  smallest = arr.select { |x| x < mid.downcase }
  biggest = arr.select { |x| x >= mid.downcase }
  dictionary_sort(smallest) + [mid] + dictionary_sort(biggest)
end

# Initially kept returning ["A", "can", "can", "feel", "singing.", "like"] then realised I needed to add dictionar_sort(smallest) and biggest.
