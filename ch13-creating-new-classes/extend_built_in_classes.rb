class Integer
 def factorial
     if self <= 1
       1
     else
       self * (self - 1).factorial #recursion
     end
 end


def to_roman
  
  rnum = ''
  rnum = rnum + 'M' * (self / 1000)
  rnum = rnum + 'D' * (self % 1000 / 500)
  rnum = rnum + 'C' * (self % 500 / 100)
  rnum = rnum + 'L' * (self % 100 / 50)
  rnum = rnum + 'X' * (self % 50 / 10)
  rnum = rnum + 'V' * (self % 10 / 5)
  rnum = rnum + 'I' * (self % 5 / 1)
  rnum
end


end

class Array

def shuffle
    arr = self
    shuffled_array = []
    
    while arr.length > 0
    index = 0
    not_shuffled = []
    random_index = rand(arr.length)
    
      arr.each do |tested_object|
        if index == random_index
          shuffled_array.push tested_object
        else 
          not_shuffled.push tested_object
        end
        index += 1
      end
      arr = not_shuffled
    end
    shuffled_array
end

end





