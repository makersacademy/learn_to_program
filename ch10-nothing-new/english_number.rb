def english_number num
    smallNumber = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' ]
    teensNumber = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tensNumber  = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    bigNumber   = ['thousand', 'million', 'billion','trillion','quadrillion','quintillion','sextillion','septillion','octillion','nonillion','decillion','undecillion','duodecillion','tredecillion','quattuordecillion','quindecillion','sexdecillion']
    letterNum=[]
    if num%10 == 0 && num < 100 && num !=0
      letterNum << (tensNumber[num/10 - 1])
    elsif num < 10
      letterNum << (smallNumber[num])
    elsif num < 20
      letterNum << (teensNumber[num-11])
    elsif num < 100
      letterNum << (tensNumber[num/10 - 1]) + '-' + smallNumber[num - (num/10)*10 ]
    elsif num < 1000
      letterNum << smallNumber[num/100]
      letterNum << 'hundred'
      letterNum << english_number(num - (num/100)*100)
    else
      n = 51
      while num > 999
        until num/10**n > 0
          n -=3
        end
        letterNum << english_number(num/10**n)
        letterNum << bigNumber[n/3 - 1]
        num -= (num/10**n)*10**n
      end
      letterNum << english_number(num)
    end
    letterNum = letterNum.join(' ')
    letterNum!='zero' ? letterNum.sub('zero','').rstrip : letterNum.rstrip
end
