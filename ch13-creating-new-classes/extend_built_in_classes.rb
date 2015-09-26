class Integer

  def factorial
    self == 0 ? 1 : self * (self - 1).factorial
  end

  def to_roman
    
    num = self
    array = []
    array << num / 1000
    num = num % 1000
    array << (num >= 500 ? 1 : 0)
    num = num % 500
    array << num / 100
    num = num % 100
    array << (num >= 50 ? 1 : 0)
    num = num % 50
    array << num / 10
    num = num % 10
    array << (num >= 5 ? 1 : 0)
    num = num % 5
    array << num
  
    for i in 0..6 do array[i] = ["M","D","C","L","X","V","I"][i] * array[i] end
    array.join #.gsub("DCCCC","CM").gsub("CCCC","CD").gsub("LXXXX","XC").gsub("XXXX","XL").gsub("VIIII","IX").gsub("IIII","IV")
  end
end


class Array
  def myshuffle 
    if self.empty? then [] else
      index = rand(self.length)
      out = self[index]
      self.delete_at(index)
      self.myshuffle << out
    end
  end
end

  