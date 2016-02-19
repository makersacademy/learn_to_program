class Integer
  def factorial
   self <= 1 ? 1 : self * (self - 1).factorial
 end
end

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

class Integer
  def to_roman
    num = self
      orn = ''
      	orn += 'M' * (num/1000)
      	num = num % 1000
      	orn += 'D' * (num/500)
      	num = num % 500
      	orn += 'C' * (num/100)
      	num = num % 100
      	orn += 'L' * (num/50)
      	num = num % 50
      	orn += 'X' * (num/10)
      	num = num % 10
      	orn += 'V' * (num/5)
      	num = num % 5
      	orn += 'I' * (num)
      	return orn
    end
end
