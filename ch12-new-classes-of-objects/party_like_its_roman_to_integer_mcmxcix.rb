def roman_to_integer
  roman_hash = {
    "M" => 1000,
     "D" => 500,
     "C" => 100,
     "L" => 50,
     "X" => 10,
     "V" => 5,
     "I" => 1,
  }

puts "Please enter roman numerals:"
roman_nums = gets.chomp.upcase

answer = []
arr = roman_nums.split ("")
arr = arr.map {|n| roman_hash[n]}

if arr.length == 1
  return arr[0]
else
  until arr.length == 0
    if arr[-2] == nil
      answer << arr[0]
      break
    elsif arr[-1] <= arr[-2]
      answer << arr[-1]
      arr.pop
    elsif arr[-1] > arr[-2]
      answer << arr[-1] - arr[-2]
      arr.pop(2)
    end
  end
  return answer.reduce(:+)
end
end
