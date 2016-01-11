def dictionary_sort arr
  # your code here
  arr.sort_by{|x| x.downcase}
end

puts dictionary_sort(["BIG","small","Medium", "LARge"])