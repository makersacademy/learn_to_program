def roman_to_integer roman
	ns = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000}
	roman.chars.map{|x| ns[x.upcase]}.push(0).each_cons(2).inject(0){|sum,(a,b)| a>=b ? sum+=a : sum-=a}
end
