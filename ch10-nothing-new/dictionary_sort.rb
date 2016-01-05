def dictionary_sort arr

  swap = 'on'
  while swap == 'on'
    swap = 'off'
    n = 0

   while n <= (arr.length - 2)

     if arr[n].downcase > arr[n+1].downcase
       temp     = arr[n]
       arr[n]   = arr[n+1]
       arr[n+1] = temp
       swap = 'on'
     end
     n = n + 1
   end
  end
  arr
end

# puts dictionary_sort ['can','feel','singing.','like','A','can']
