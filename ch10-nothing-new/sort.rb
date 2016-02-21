def sort(arr)
  return arr if arr.length <= 0 
   
   test = arr.pop
   least = arr.select{|x| x < test}
   most = arr.select{|x| x >= test}

 sort(least) + [test] + sort(most)

end



print sort(["How","How","now","Brown","Cow"])

