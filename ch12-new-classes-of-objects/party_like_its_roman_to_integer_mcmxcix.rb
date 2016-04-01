def roman_to_integer roman
numerals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  broken = roman.split("")
arr_tot =[]
x = broken.map {|brk| brk = brk.downcase
    numerals.each {|k, v|
    if brk == k
      arr_tot << v
    else
      ""
    end

    }
  }

counter = arr_tot.length
final = []
index=arr_tot.length-2
#p arr_tot/
#p arr_tot.last
#arr_tot.pop
while counter != 0
break if arr_tot == []
counter=-1
if arr_tot.last >  arr_tot[arr_tot.length-2]
  #p arr_tot.pop

final << arr_tot.pop - arr_tot.last
arr_tot.pop

else
final << arr_tot.pop

end
end

p final.inject{|acc,x| acc + x}

#end
#index = arr_tot.length

# p arr_tot
# p arr_tot.pop
# p arr_tot.length
# p arr_tot.pop



#   number = []
#  last = arr_tot.reverse.pop

#   arr_tot.each {|x|
#   if x < arr_tot.reverse.pop

 end



 roman_to_integer "CCCLXV"