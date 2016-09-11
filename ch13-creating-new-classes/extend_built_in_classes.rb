class Array
  def shuffle
    arr = self
    shuf = []

    while arr.length > 0
      rand_index = rand(arr.length) #pick a randon index

      current_index = 0 # I take all the order items in arr and put them in a new array
      new_arr = [] # except for the rand_index item.

      arr.each do |item|
        if current_index == rand_index
          shuf << item
        else
          new_arr << item
        end

        current_index = current_index + 1 # increases the current_index value each time it runs the .each method
      end

      arr = new_arr #replace the original arr with the new array (smaller by 1 each time) until it the 'while' block is forfilled
    end

    shuf #returns the new shuffled array
  end
end

class Integer
  def fractorial
    if self <= 1
      1
    else
      self * (self-1).fractorial
    end
  end

  def old_roman_numeral
    old_roman = ''

    old_roman = old_roman + 'M' * (self / 1000)
    old_roman = old_roman + 'D' * (self % 1000/500)
    old_roman = old_roman + 'C' * (self % 500/100)
    old_roman = old_roman + 'L' * (self % 100/50)
    old_roman = old_roman + 'X' * (self % 50/10)
    old_roman = old_roman + 'V' * (self % 10/5)
    old_roman = old_roman + 'I' * (self % 5/1)

    old_roman
  end
=begin
    roman = ''

    roman = roman + 'M' * (self % 10000/1000)

    hundreds = self % 1000/100
    if  hundreds == 9
      roman = roman + 'CM'
    elsif hundreds == 4
      roman = roman + 'CD'
    else
      roman = roman + 'D' * (self % 1000/500)
      roman = roman + 'C' * (self % 500/100)
    end

    tens = self % 100/10
    if tens == 9
      roman = roman + 'XC'
    elsif tens == 4
      roman = roman + 'XL'
    else
      roman = roman + 'L' * (self % 100/50)
      roman = roman + 'X' * (self % 50/10)
    end

    ones = self % 10/1
    if ones == 9
      roman = roman + 'IX'
    elsif ones == 4
      roman = roman + 'IV'
    else
      roman = roman + 'V' * (self % 10/5)
      roman = roman + 'I' * (self % 5/1)
    end
  end
=end
end


puts [1,2,3,4,5,6,7,8,9].shuffle
puts 5.fractorial
puts 123.old_roman_numeral
