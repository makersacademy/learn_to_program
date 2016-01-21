class Integer
  def factorial
    self > 1 ? (1..self).inject{|x,y| x*y} : 1
  end

  def to_roman
   roman_numbers = [1,5,10,50,100,500,1000]
   roman_letters = ['I','V','X','L','C','D','M']
   i = 6
   result=''
   num = self
   while num != 0
     if num >= roman_numbers[i]
       result+=roman_letters[i]
       num -= roman_numbers[i]
     else
       i-=1
     end
   end
   result
  end
end

class Array
  def shuffle_arr
    recursive_shuffle self, []
  end

  def recursive_shuffle not_shuffled, shuffled
    return shuffled if not_shuffled.size == 0
    prng = Random.new
    i = prng.rand(0...not_shuffled.size)
    shuffled << not_shuffled[i]
    not_shuffled.delete_at(i)
    recursive_shuffle not_shuffled, shuffled
  end
end
