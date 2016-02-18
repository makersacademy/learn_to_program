def roman_to_integer(numeral)
  bob = ["m","d","c","l","x","v","i"]
  
  numeral = numeral.downcase
  new_array = []
  numeral.downcase.split("").each_with_index {|i,index|

  if bob.index(i) == nil
     puts "no good, give me real roman numeral"
     exit
  elsif index + 1 == numeral.length 
    new_array << i
  elsif bob.index(i) <= bob.index(numeral[index+1])
     new_array << i
     new_array << "!"
     flag = true
  else
    new_array << i
  end}
count = 0


numerals_hash = { 
    "m"   =>  1000,
    "cm"  =>  900,
    "d"   =>  500,
    "cd"  =>  400,
    "c"   =>  100,
    "xc"  =>  90,
    "l"   =>  50,
    "x"   =>  10,
    "ix"  =>  9,
    "v"   =>  5,
    "iv"  =>  4,
    "i"   =>  1}


if new_array.include? "!"
  final_array = new_array.join("").split("!")
  final_array.each {|i, index|
      count += numerals_hash[i] 
    }
else
  count = numerals_hash[new_array.join("")]
end

count



count
 end
 roman_to_integer("iv")
