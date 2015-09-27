=begin
 class Array
   def shuffle
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
=end

class Integer
  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    raise 'Must use positive integer' if self <= 0
    roman = ''
    roman << 'M' * (self / 1000)
    roman << 'D' * (self % 1000 / 500)
    roman << 'C' * (self % 500 / 100)
    roman << 'L' * (self % 100 / 50)
    roman << 'X' * (self % 50 / 10)
    roman << 'V' * (self % 10 / 5)
    roman << 'I' * (self % 5 / 1)
    roman
  end
end
