class Array
  def shuffle
    arr = self
    shuffled = []

    while !arr.empty?
      random = rand(arr.length) # picking random element using length of array
      index_no = 0
      new_arr = []

      arr.each do |element|
        if index_no == random
          shuffled.push element # if index number matches random number add to shuffled array
        else
          new_arr.push element # otherwise add to new array
        end

        index_no += 1
      end

    arr = new_arr #new array smaller, loops until arr is empty
    end

    shuffled # returns all elements in shuffled array in random order
  end
end

class Integer
  def factorial
    num = self
    if num< 0
      return 'You can\'nt take the factorial of a negative number!'
    elsif num <= 1
      1
    else
      num * (num-1).factorial
    end
  end

  def to_roman
    num = self
    old_roman = ''
    old_roman = old_roman + 'M' * (num / 1000 )
    old_roman = old_roman + 'D' * (num % 1000 / 500)
    old_roman = old_roman + 'C' * (num % 500 / 100)
    old_roman = old_roman + 'L' * (num % 100 / 50)
    old_roman = old_roman + 'X' * (num % 50 / 10)
    old_roman = old_roman + 'V' * (num % 10 / 5)
    old_roman = old_roman + 'I' * (num % 5 / 1)
  end
end
