def dictionary_sort(arr)
  arr.sort! { |a, b| a.length <=> b.length }
  arr.sort_by! { |w| w.to_s.downcase }
end
