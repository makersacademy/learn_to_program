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
"D" => 500,
"C" => 100, 
"L" => 50, 
"X" => 10, 
"V" => 5, 
"I" => 1, 
}

answer = ""

hash.each do |letter,number|
	answer << letter * (num / number)
	num %= number
end
answer
end
end