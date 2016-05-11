def english_number number
  numstr = ""
ones_place = ['one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']
illions = ['thousand','million','billion','trillion' ]
         
  len = number.to_s.length
  splnum = number.to_s.split("")
  arr1 = []
  i = len-1
  
    while (i >= len%3 )
        arr = []
      arr << splnum[i-2] << splnum[i-1] << splnum[i]
      arr = arr*""
      i = i - 3
      arr1 << arr
    end
    
    if len%3 == 1
      return arr1
      elsif len%3 == 1
      arr1 << [splnum[0]]*""
    elsif len%3 == 
      arr1 << [splnum[0], splnum[1]]*""
    end
    
  j=0
  arr1.each do |ele|
     ele << " "<< illions[j]
     j = j+1
  end
  p arr1
  #splitting arr1
  arrnew = []
  arr1.each do |ele|
   j = ele.split(" ")
   arrnew << j
   end
   
   #converting numbers to words
   arrnew.each do |ele|
    left = ele[0]
    write = left/100
    left = left - write*100
    if write > 0
      num_string = numstring
    end
    
      
   
    
    
    
      
  
  
      
  
end

english_number(123456789)