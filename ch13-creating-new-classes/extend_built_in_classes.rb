class Array
    
    def shuffle
    
    arr = self
    
    shuffle_array = []
  
    while arr.empty? == false
        r = arr[rand(arr.length)]
        shuffle_array << r
        arr.delete_at(arr.index(r))
    end
  
    shuffle_array
    end
  
end

class Integer
    
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  
  def to_roman
      
    num = self
    
    hash = {
        "M" => 1000,
        "CM"=> 900,
        "D"=> 500,
        "CD"=> 400,
        "C"=> 100,
        "XC"=> 90,
        "L"=> 50,
        "XL"=> 40,
        "X"=> 10,
        "IX"=> 9,
        "V"=> 5,
        "IV"=> 4,
        "I" => 1
    }
  
    answer = ""
  
    hash.each do |k, v|
        answer << k * (num/v) 
        num = num % v
    end
    
    answer
    
  end
    
end