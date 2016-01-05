def roman_numeral num
	array = []
	first = {1=> "I", 2=> "II", 3=> "III", 4=>"IV", 5=> "V", 6=> "VI", 7=>"VII", 8=>"VIII", 9=>"IX"}
    second = {1=>"X", 2=> "XX", 3=> "XXX", 4=>"XL", 5=> "L", 6=> "LX", 7=>"LXX", 8=>"LXXX", 9=>"XC"}
    third = {1=> "C", 2=> "CC", 3=> "CCC", 4=>"CD", 5=> "D", 6=> "DC", 7=>"DCC", 8=>"DCCC", 9=>"CM"}
    fourth = {1=> "M", 2=> "MM", 3=> "MMM"}
a = num.to_s.chars.reverse
array << first[a[0].to_i]
array << second[a[1].to_i]
array << third[a[2].to_i]
array << fourth[a[3].to_i]
array.reverse.join
end