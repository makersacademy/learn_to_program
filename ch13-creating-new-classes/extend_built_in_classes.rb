class Array
  def shuffle
   arr=self
   shuf=[]
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
    arr=new_arr
   end
   shuf
  end
end

# This tests Array.shuffle
array=[1,2,3,4,5,6,7,8,9,0]
puts array.shuffle.to_s
puts array.shuffle.to_s
puts array.shuffle.to_s

class Integer
  def to_roman
      num=self
  romanString=""
  thousands=num/1000
  left=num-thousands*1000
  if thousands > 0
      romanString=romanString+"M"*thousands
  end
  if left > 899 && left <1000
     romanString=romanString+"CM"
     left=left-900
  end
  five_hundreds=left/500
  left=left-five_hundreds*500
  if five_hundreds > 0
    romanString=romanString+"D"*five_hundreds
  end
  hundreds=left/100
  left=left-hundreds*100
  if hundreds > 0 && hundreds != 4
    romanString=romanString+"C"*hundreds
  elsif hundreds ==4
    romanString=romanString+"CD"
  end
  if left > 89 && left <100
     romanString=romanString+"XC"
     left=left-90
  end
  fifties=left/50
  left=left-fifties*50
  if fifties > 0
    romanString=romanString+"L"*fifties
  end
  tens=left/10
  left=left-tens*10
  if tens > 0 && tens != 4
    romanString=romanString+"X"*tens
  elsif tens ==4
    romanString=romanString+"XL"
  end
  if left == 9
      romanString=romanString+"IX"
      left=left-9
  end
  fives=left/5
  left=left-fives*5
  if fives > 0
    romanString=romanString+"V"*fives
  end
  ones=left/1
  left=left-ones*1
  if ones > 0 && ones !=4
    romanString=romanString+"I"*ones
    elsif ones == 4
    romanString=romanString+"IV"
  end
  romanString
end
end

# This tests .to_roman
puts 1999.to_roman
puts 43.to_roman
puts 17649.to_roman

class Integer
    def factorial
        if self <= 1
            1
        else
            self * (self-1).factorial
        end
    end
end

puts 3.factorial
puts 10.factorial
puts 20.factorial
puts 30.factorial