class Integer
  def factorial
    if self <= 1
      1
    else
      self*(self-1).factorial
    end
  end
  def old_roman_numeral
    num = self
    i_length = 0
    v_length = 0
    x_length = 0
    l_length = 0
    c_length = 0
    d_length = 0
    m_length = 0

    if num >= 1000
      m_length = num / 1000
      num = num % 1000
    end

    if num >= 500
      d_length = num / 500
      num = num % 500
    end

    if num >= 100
      c_length = num / 100
      num = num % 100
    end

    if num >= 50
      l_length = num / 50
      num = num % 50
    end

    if num >= 10
      x_length = num / 10
      num =  num % 10
    end

    if num >= 5
      v_length = num / 5
      num = num % 5
    end

    if num >= 1
      i_length = num / 1
      num = num % 1
    end
  puts 'M'*m_length + 'D'*d_length + 'C'*c_length + 'L'*l_length + 'X'*x_length + 'V'*v_length + 'I'*i_length
end
end

puts 'Factorial Method:'
puts 5.factorial
puts 20.factorial
puts 1.factorial
puts
puts 'Old Roman Numeral Method:'
puts 100.old_roman_numeral
puts 5.old_roman_numeral
puts 10.old_roman_numeral
puts 75.old_roman_numeral


class Array
  def shuffle
    arr = self
    shuff = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

      arr.each do |item|
        if curr_index == rand_index
          shuff.push item
        else
          new_arr.push item
        end

        curr_index = curr_index + 1
      end
      arr = new_arr
    end
    shuff
  end
end


puts 'Shuffle Method:'
puts ['50','20','30','10','60'].shuffle
