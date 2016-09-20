def sort arr
return arr if arr.length <= 1
  middle = arr.pop
  less   = arr.select{|x| x <  middle}
  more   = arr.select{|x| x >= middle}
  sort(less) + [middle] + sort(more)
end
puts(sort(['can','feel','singing','like','a','can']).join(' '))

#def sort arr
#
#  sortd = Array.new
#  i=0
#
#  while arr.length > 0
#    if sortd.length == 0
#      sortd.push(arr[0])
#      arr.delete_at(0)
#    else
#      unsorted = true
#      while unsorted
#        k = 0
#        while sortd[k].to_s < arr[0].to_s && k <= sortd.length
#          k += 1
#        end
#
#        if k == 0
#          sortd = arr[0].to_a + sortd[k..sortd.length]
#        elsif k == sortd.length
#          sortd.push(arr[i])
#        else
#          sortd_end = sortd[k..sortd.length]
#          sortd = sortd[0..k-1] << arr[0]
#          sortd += sortd_end.to_a
#          unsorted = false
#        end
#      end
#    end
#    arr.shift
#  end
#  sortd
#end
#
#puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
