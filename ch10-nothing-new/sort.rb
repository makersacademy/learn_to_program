def sort arr
    b = 0
    while b < arr.length
      c = b+1
      while c < arr.length
        if arr[b] < arr[c]
          arr[b] , arr[c] = arr[c] , arr[b]
        end
        c += 1
      end
      b += 1
    end
    arr.reverse
  end
