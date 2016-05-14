#english to numerals 

def english_number(number)
    numstr = ""
	convert_map = {
	  0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
    }
	illions = %w(thousand million billion trillion quadrillion quintillion
               sextillion septillion octillion nonillion decillion undecillion
               duodecillion tredecillion quattuordecillion quindecillion
               sexdecillion septendecillion octodecillion novemdecillion
               vigintillion unvigintillion dovigintillion trevigintillion
               quattuorvigintillion quinvigintillion sexvigintillion
               septenvigintillion octovigintillion novemvigintillion
               trigintillion untrigintillion dotrigintillion tretrigintillion
               quattuortrigintillion quintrigintillion sextrigintillion
               septentrigintillion octotrigintillion novemtrigintillion)
	
	
	grp_three_final = []
	grp_three_int = []
	name_arr = []
	eng_form = ''
	final_arr = []
	
	rev_num = number.to_s.reverse
	spl_rev_num = rev_num.split("")
	grp_three = spl_rev_num.each_slice(3).to_a
	grp_three.each do |x|
		grp_three_final << x.reverse
	end
	grp_three_final.each do |ele|
		grp_three_int << ele.join().to_i
	end
		
		grp_three_int.each do |ele|
	# ele = 123
		if (convert_map.has_key?(ele))
			eng_form = convert_map[ele] + " "
		elsif (ele < 100) 
			eng_form = convert_map[ele%100 - ele%10] + "-" + convert_map[ele%10] + " "
		elsif (ele % 100 == 0)
			eng_form = convert_map[ele/100] + " hundred "
		elsif ((ele%100 - ele%10) == 0)
			eng_form = convert_map[ele/100] + " hundred and " + convert_map[ele%10] + " "
		else
			eng_form = convert_map[ele/100] + " hundred and " + convert_map[ele%100 - ele%10] + "-" + convert_map[ele%10] + " "
		end
		name_arr << eng_form
		
	end
	
	if (name_arr.length != 0)
		final_arr = [name_arr[0]]
		for i in (1..(name_arr.length - 1))
			final_arr << (name_arr[i] << (illions[i-1] << " "))
		end
	else
		final_arr << name_arr
	end
		rev = final_arr.reverse.join().strip
		return rev
end

# english_number(101)

# [["9", "8", "7"], ["6", "5", "4"], ["3", "2", "1"], ["9", "8", "7"], ["6", "5", "4"], ["3", "2", "1"]]