def dictionary_sort arr
  arr = arr.sort! {|a,b| a.length <=> b.length}
  arr = arr.sort_by {|w| w.to_s.downcase}
  return arr
end
