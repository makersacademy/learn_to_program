
def sort arr
  counter2 = 0
  while counter2 < arr.length-1
    counter = arr.length-1
    while counter > 0
      bottom = arr[counter]
      top = arr[counter-1]
      if bottom < top
        arr[counter-1] = bottom
        arr[counter] = top
      end
      counter-=1
    end
    counter2+=1
  end
arr
end
fruit = ['apple', 'strawberry', 'orange', 'rasberry', 'beetroot', 'cranberry', 'cucumber']

puts sort fruit
