def shuffle arr
  # your code here
  size = arr.length
  (size).downto(1) do |n|
       index=rand(n)
       # swap elements at index and the end
       arr[index], arr[size-1] = arr[size-1],arr[index]
    end
    arr
end