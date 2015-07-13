def createNumArray string, hash
  numeralArray=Array.new
  numberArray=Array.new
  len=string.length
  len.times {numeralArray.push(string.slice!(-1))}
  puts "numeralArray (in reverse): #{numeralArray}"
  numeralArray.each_index do |index|
    numberArray[index]=hash[numeralArray[index]]
  end
  puts "numberArray (in reverse): #{numberArray}"
  numberArray
end

def addNumerals arr
  counter=arr[0]
  index=0
  (arr.length-1).times {
    if arr[index] > arr[index+1]
      sum=-arr[index+1]
      counter+=sum
    else
      sum= arr[index+1]
      counter+=sum
    end
    index+=1}
  counter
end

def roman_to_integer roman
  numerals = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}
  if roman.length==1
    returns numerals[roman]
  else
    numberArray=createNumArray roman, numerals
    total = addNumerals numberArray
  end
  total
end

puts roman_to_integer "MMXV"