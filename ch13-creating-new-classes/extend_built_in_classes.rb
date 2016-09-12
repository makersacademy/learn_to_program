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
  def factorial
    raise 'Must not use negative integer' if self < 0

    (self <= 1) ? 1 : self * (self-1).factorial
  end


  def to_roman

    raise 'Must use positive integer' if self <= 0

    roman = ''

    roman << 'M' * (self / 1000)
    roman << 'D' * (self % 1000/500)
    roman << 'C' * (self % 500/100)
    roman << 'L' * (self % 100/50)
    roman << 'X' * (self % 50/10)
    roman << 'V' * (self % 10/5)
    roman << 'I' * (self % 5/1)

    roman
  end
end


puts [1,2,3,4,5,6,7,8,9].shuffle
puts 5.factorial
puts 123.to_roman
