# Extend the built-in classes. How about making your shuffle method on page 75 an array method? Or how about making factorial an integer method? 4.to_roman, anyone? In each case, remember to use self to access the object the method is being called on (the 4 in 4.to_roman).

#MY SHUFFLE MEthoD ADOPTED FOR SELF. RENAMED MIX TO PREVENT CONFUSION IN TESTS WITH ACTUAL SHUFFLE METhOD
# =================================================================================
# class Array
#   def mix
#   # This "wraps" recursive_sort.
#   unsorted_array = self
#   recursive_sort(unsorted_array, [])
#   end
#   def recursive_sort(unsorted_array, sorted_array)
#     if unsorted_array == []
#       #can't alter self. i.e. 'self = sorted_array' returns an error. In this case we can alter what is within the array! Just like freeze?
#       return self.concat(sorted_array)
#     end

#     if sorted_array == []
#       num = unsorted_array.length
#       sorted_array = Array.new(num)
#       # another way of doing it = > num.times { sorted_array << nil}
#     end
#     available_indexes = []
#     sorted_array.each_with_index {|val, index| available_indexes << index if val == nil}
#     random_index = rand(available_indexes.length)
#     rand_avail_index = available_indexes[random_index]
#     sorted_array[rand_avail_index]= unsorted_array.pop

#     recursive_sort(unsorted_array, sorted_array)
#   end
# end
# =================================================================================
#factorial written as a method on self in Fixnum class
class Integer
  def factorial
    if self < 0
      raise 'You can\'t take the factorial of a negative number!'
    end

    if self <= 1
      return 1
    else
      return (1..self).inject(:*)
    end
  end
end
# =================================================================================
# old school roman numerals
class Integer
  def to_roman
    roman_string = ''
    number = self
    if number / 1000 >= 1
      print = number /1000
      number = number - (print * 1000)
      print.times do
        roman_string += 'M'
      end
    end
    if number / 500 >= 1
      print = number / 500
      number = number - (print * 500)
      roman_string += 'D'
    end
    if number / 100 >= 1
      print = number/ 100
      number = number - (print * 100)
      print.times do
        roman_string += 'C'
      end
    end
    if number / 50 >= 1
      print = number/ 50
      number = number - (print * 50)
      print.times do
        roman_string += 'L'
      end
    end
    if number / 10 >= 1
      print = number/ 10
      number = number - (print * 10)
      print.times do
        roman_string += 'X'
      end
    end
    if number / 5 >= 1
      print = number/ 5
      number = number - (print * 5)
      print.times do
        roman_string += 'V'
      end
    end
    if number / 1 >= 1
      print = number/ 1
      number = number - (print * 1)
      print.times do
        roman_string += 'I'
      end
    end
    return roman_string
  end
end