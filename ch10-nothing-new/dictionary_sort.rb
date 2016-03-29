def dictionary_sort arr
  arr.sort_by{|x| x.downcase}

end

arr = ["i","AM","a","Massive","cunt"]
p dictionary_sort arr