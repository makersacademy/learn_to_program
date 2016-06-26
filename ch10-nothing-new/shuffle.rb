#def shuffle some_array
    #recursive_shuffle some_array, []
#end

def shuffle sorted_array
    shuf = []
    while sorted_array.length > 0
      rand_index = rand(sorted_array.length)
      curr_index = 0
      array = []
      sorted_array.each do |item|
        if curr_index == rand_index
          shuf.push item
        else
          array.push item
        end
        curr_index = curr_index + 1
      end
      sorted_array = array
    end
    shuf
        #unsorted_array = []
        #x = rand(0...sorted_array.count)
        #x = (0...(sorted_array.count)).sort_by{rand}
        #sorted_array.each do |num|
          #while unsorted_array.count < sorted_array.count
          #unsorted_array << sorted_array[x]}

        #return unsorted_array
end
array = ['a','b','c','d','e','f','d']
puts shuffle array
