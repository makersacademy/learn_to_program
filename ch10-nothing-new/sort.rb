def sort arr
return arr if arr.length <= 1
  middle = arr.pop
  smaller = arr.select{|x| x < middle}
  larger = arr.select{|x| x >= middle}

(sort(smaller) << middle << sort(larger)).flatten

end
