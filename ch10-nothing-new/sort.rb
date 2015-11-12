def sort arr
 arr.min(arr.size).to_a.each { |e| arr.delete_at(arr.index(e)) }
end
