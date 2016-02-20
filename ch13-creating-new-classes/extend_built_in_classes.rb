class Integer
  #=======INT TO ROMAN =======
  def to_roman
  left = self # !> assigned but unused variable - left

  display = ""
  display += 'M' * (self /1000)
  display += 'D' * (self%1000/500)
  display += 'C' * (self%500/100)
  display += 'L' * (self%100/50)
  display += 'X' * (self%50/10)
  display += 'V' * (self%10/5)
  display += 'I' * (self%5/1)


  end

def factorial
    if self == 0
      return 1
    end

    self * (self-1).factorial
  end
end


class Array
  def shuffle
   new_arr = []
   until self.length == 0
   rand_number = rand(self.length)
   new_arr << self[rand_number]
   self.delete_at(rand_number)
   end
   return new_arr
  end

end