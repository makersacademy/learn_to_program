def sort arr
  my_sort arr, []
end

def my_sort arr, sorted_arr
  if arr.length > 0 then
    # find in arr that is alphabetically next
    nxt = arr.inject {|memo, ele| if memo <= ele then memo else ele end}
    sorted_arr.push nxt
    # remove from arr
    arr.delete_at arr.index nxt
    # recurse over rest of arr
    my_sort arr, sorted_arr
  else
    sorted_arr
  end
end
