def sort arr

  sortd = Array.new
  i=0

  while arr.length > 0
    if sortd.length == 0
      sortd.push(arr[0])
      arr.delete_at(0)
    else
      unsorted = true
      while unsorted
        k = 0
        while sortd[k].to_s < arr[0].to_s && k <= sortd.length
          k += 1
        end
        elem = [arr[i]]
        sortd = sortd[0..k] + elem + sortd[k+1..sortd.length]
        unsorted = false
      end
    end
    arr.shift
  end
  sortd
end

puts(sort(['can','feel','singing','like','a','can']))
