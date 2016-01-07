class Integer
  def factorial
    self.downto(1).inject(:*)
  end
  
  def to_roman
    array = self.to_s.split("").map {|n| n.to_i}
    string = ''
      
    while array.length > 0
     array.each_with_index do |n, i|
      if array.length >= 4 && i == 0
        string += "M" * n 
        array.delete_at(i)
      elsif array.length == 3 && i == 0
        string += "D" + "L" * (n % 5) if n >= 5
        string += "C" * n if n < 5
        array.delete_at(i)
      elsif array.length == 2 && i == 0
        string += "L" + "X" * (n % 5) if n >= 5
        string += "X" * n if n < 5
        array.delete_at(i)
      elsif array.length == 1
        string += "V" + "I" * (n % 5) if n >= 5
        string += "I" * n if n < 5
        array.delete_at(i)
      end
    end
  end
  string
  end
end

p 56.factorial
p 56.to_roman

class Array
  def light_shuffle
  length = self.length
  random_num = Random.new
  new_array = []
  
    self.each do |a|
      num = random_num.rand(1..2)
      if num == 1
        new_array.push(a)
      else
        new_array.unshift(a)
      end
      
    end  
    new_array
  end
end

p [1,2,3,4,5,6].light_shuffle