sh_number number 

	if number < 0
		return 'Please Enter a numebr that isnt\'t negative'
	end
	
	if number==0
		return 'zero'
	end
	
	num_string=''
	
	ones_place = ['one', 'two', 'three', 
			   	  'four', 'five', 'six',
			   	  'seven','eight','nine']
	tens_place = ['ten','twenty','thirty',
			 	  'forty','fifty','sixty',
			 	  'seventy','eighty','ninty']
	teenagers=['eleven','twelve','thirteen',
	           'fourteen','fifteen','sixteen',
	           'seventeen','eighteen','nineteen']
	zillions=[['hundreds', 2],
			  ['thousands', 3],
			  ['million', 6],
			  ['billion', 9],
			  ['trillion', 12],
			  ['quadrillion', 15],
			  ['quintillion', 18],
			  ['sextillion', 21],
			  ['octillion', 27],
			  ['nonillion', 30],
			  ['decillion', 33],
			  ['undecillion', 36],
			  ['duodecillion', 39],
			  ['tredecillion', 42],
			  ['quatturodecillian', 45],
			  ['quindedcillion',48],
			  ['sexdecillion', 51],
			  ['septendecillion', 54],
			  ['octodecillion', 57],
			  ['novemdecillion', 60],
			  ['vigintillion', 63],
			  ['googol', 100]]
	  
	  left=number   
	           
	  while zillions.length >0
	  	zil_pair=zillions.pop
	  	zil_name=zil_pair[0]
	  	zil_base=10**zil_pair[1]
	  	write =left/zil_base
	  	left=left-write*zil_base
	  	
	  	if write>0
	  		prefix=english_number write
	  		num_string=num_string+ prefix + ' ' + zil_name
	  		
	  		if left>0
	  		num_string=num_string + ' '
	  		end 
	  	end
	  end
	  
	  write =left/10
	  left=left-write *10
	           
	if write>0
		if ((write ==1) and (left>0))
			num_string=num_string + teenagers[left-1]
			left =0
		else
			num_string=num_string + ' '+tens_place[write-1]
		end
	end
	
	write =left 
	left =0
	
	if write >0
		num_string= num_string + ones_place[write-1]
	end
	num_string
end

num=9
bottle="bottles"
bottle2="bottles"
while num > 0
	if num==2
		bottle2="bottle"
	end
	if num==1
		bottle="bottle"
		bottle2="bottles"
	end

	puts(english_number(num) + " "+bottle + " of bear on the wall," + english_number(num)+" "+ bottle +" of bear. Take one down
	and pass is around, " + english_number(num-1)+ " "+ bottle2 + " of bear on the wall.")
	num-=1
end 
