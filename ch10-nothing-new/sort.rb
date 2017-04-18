#non-recursive

#def sort arr
#  l = arr.length 
 # n = 0
 
 #   while l-1 > n
  #      if  arr[n].downcase > arr[n+1].downcase
  #          arr << arr[n]
  #          arr.delete_at(n)
  #          n = 0
  #      else
  #          n += 1
  #      end
 #   end
 #   arr
#end
#recursive
def sort arr
  l = arr.length 
  n = 0
 
    while l-1 > n
        if  arr[n].downcase > arr[n+1].downcase
            arr << arr[n]
            arr.delete_at(n)
            sort arr
        else
            n += 1
        end
    end
    arr
end