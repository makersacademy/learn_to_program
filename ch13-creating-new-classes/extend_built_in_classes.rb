class Integer
  def romanize
num = self
hash = {
"M" => 1000, 
"CM" => 900,
"D" => 500,
"CD" => 400,
"C" => 100, 
"XC" => 90,
"L" => 50, 
"XL" => 40,
"X" => 10,
"IX" => 9, 
"V" => 5, 
"IV" => 4,
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