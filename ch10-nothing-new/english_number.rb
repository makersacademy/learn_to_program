
def packets numStr, array
  if numStr.length > 3
    array.insert(0,numStr[-3,3])
    numStr=numStr[0...-3]
  else
    array.insert(0,numStr)
    return array
  end
  packets(numStr, array)
end

def english_number number
  puts number

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  orders = ['', 'thousand', 'million', 'billion', 'trillion']


  numberStr = number.to_s
  numArray = []
  numArray = packets numberStr, numArray

  #fill the string up to full three-place packets
  if (numArray[0].length % 3)!=0
    remainder=3-(numArray[0].length % 3)
    remainder.times {numArray[0].insert(0,"0")}
  end
  puts "numArray: #{numArray}"

  outputStr=""
  parts= 0
  while parts<=numArray.length-1

    first=numArray[parts][0]
    second=numArray[parts][1]
    third=numArray[parts][2]

    if first=="0"
    else
      outputStr+=ones_place[first.to_i-1]+" hundred "
    end

    if numArray[parts][1,2].to_i<20 && numArray[parts][1,2].to_i>10
      outputStr+="and "+teenagers[third.to_i-1]+" "
    else
      if second=="0"
        outputStr+="and " if first.to_i>0 && third.to_i>0
      else
        outputStr+="and "+tens_place[second.to_i-1]
      end
      if third=="0"
      else
        if second!="0"
          outputStr+="-"
        end
        outputStr+=ones_place[third.to_i-1]
      end
    end

    unless numArray.length-1==parts
      outputStr+=" "+orders[numArray.length-parts-1]+", "
    end

    parts+=1
  end

  if outputStr[0,3]=="and"
    outputStr=outputStr[4..-1]

  end
  puts outputStr
end

# Test case
english_number 25084390103
