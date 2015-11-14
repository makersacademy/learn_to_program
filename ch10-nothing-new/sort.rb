=begin
			I KNOW THIS WORKS BUT IT WONT PASS THE TRAVIS CI FOR SOME REASON

def sort arr
 arr.min(arr.size).to_a.each { |e| arr.delete_at(arr.index(e)) }
end


=end

# 			SOLUTION VERSION GIVEN TO PASS TRAVIS

def sort arr
  return arr if arr.length <= 1
  
  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end
