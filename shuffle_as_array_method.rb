class Array

  # start the shuffle method off. take off the parameter that used to be there called
  # 'arr' because the array (i.e. you're applying this method to an array) is just itself.
  def shuffle
   # would use 'self' to refer to the array within the method
   # to make it easier, can say arr = self so that what was the parameter
   # in the method (which stood for an array passed in by the user) is
   # now standing for 'self' wherever that would have been.
    arr = self 
    shuf = []
   
    while arr.length > 0
      rand_index = rand(arr.length)
      curr_index = 0

      new_arr = []

     
      arr.each do |item|
        if curr_index == rand_index
          shuf.push item
        else
          new_arr.push item
        end

        curr_index = curr_index + 1
      end

   
      arr = new_arr
    end

    shuf
  end

end