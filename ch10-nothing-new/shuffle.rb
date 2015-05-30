def shuffle arr
  shuf = []  #create two empty arrays - shuf and other_array

    while arr.length > 0

      randomNum = rand(arr.length)

      # generate random number the length of the array
      arrayCounter = 0
      other_array = []



      # for each i of array;:
          #Identify the random number to the corresponding array index
          #Print this number to shuffle
          #Print the other numbers to a new array
          #Save the new array (with few numbers) as the new array
          #Repeat from above


        arr.each do |i|

            if arrayCounter == randomNum
              shuf.push i
            else
              other_array.push i
            end

            arrayCounter += 1 #prints out random number to shuff and other numbers to other_array (one by one)

        end

        arr = other_array

      end

      shuf

  end

  puts(shuffle([1,2,3,4,5,6,7,8,9]))
