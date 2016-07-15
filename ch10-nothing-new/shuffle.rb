def shuffle arr
  shuffld = []

  until arr.length == 0

    rand_num = rand (arr.length)

    curr_num = 0
    new_array = []

    arr.each {|x|
      if curr_num == rand_num
        shuffld.push (x)
      else
        new_array.push (x)
      end

      curr_num += 1
    }

    arr = new_array

  end

  shuffld

end
