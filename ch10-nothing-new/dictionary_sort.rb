def dictionary_sort arr
  arr.split.map.sort_by{|input| input.downcase}.join(" ")
end

puts dictionary_sort 'hello Goodbye AWESOME Code'