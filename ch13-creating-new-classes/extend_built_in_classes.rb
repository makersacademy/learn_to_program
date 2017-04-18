class Integer
    
      NUMERALS = {
  1000 => "M",
  500 => "D",
  100 => "C",
  50 => "L",
  10 => "X",
  5 => "V",
  1 => "I"
}

def factorial
    if self == 0
    1
    else
    p self*(self-1).factorial
    end
end

def to_roman

  n = self
  numbers = ""
  NUMERALS.each do |english, roman|
    numbers << roman * (n / english)
    n = n % english
  end
  p numbers
end

end

# Extend the built-in classes. How about making your shuffle method on page

#75 an array method? Or how about making factorial an integer method?#

#4.to_roman, anyone? In each case, remember to use self to access the object

#the method is being called on (the 4 in 4.to_roman).