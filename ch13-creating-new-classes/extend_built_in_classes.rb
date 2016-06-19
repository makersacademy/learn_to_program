class Integer
  # your code here
  # write out the factorial method and define it within the class integer
  #As  Chris Pine says we hopped into the class Integer deined a method
  #in here and now it is part the class integer so  we extended the Integer class
  #self refers to the object using this class in this case the object is the Integer..
  def factorial
  #factorial code here
    n = self # value passed to it
     xfactorial(n) 
  end
  def xfactorial n
    if n == 0 
      return n
    end
    if n == 1 
      return 1
    end
    if n > 1
      return n * xfactorial(n-1)
    end #if
  end # end of xfactorial 
  #Extend integer some more old_roman_numeral 
  def old_roman_numeral 
  # your code here
  num = self
  numM = num / 1000
  numMr = num % 1000
  numd =  numMr / 500
  numdr= numMr % 500
  numc = numdr / 100
  numcr = numdr % 100
  numL = numcr / 50
  numLr = numcr % 50
  numx = numLr / 10
  numxr = numLr % 10
  numv = numxr / 5
  numvr = numxr % 5
  numi = numvr / 1
  numir = numvr % 1
  totalm = numM
  totald = numd
  totalc = numc
  totalL = numL
  totalx = numx
  totalv = numv
  totali = numi 
  return 'M' * totalm.to_i + 'D'  * totald.to_i + 'C' * totalc.to_i + 'L' * totalL.to_i + 'X' * totalx.to_i + 'V' * totalv.to_i + 'I' * totali.to_i
end
end  #class 
##Extend Array class code below ##
class Array
    def recursive_shuffle unshuffled, shuffled
     shuff_length = unshuffled.length 
  if unshuffled == []
    unshuffled = shuffled
    return shuffled
  end  
  #generate a random number from 0 to unshuffled length
  random_index = rand(0..shuff_length -1)
  #iterate over array find the random item and push into shuffled until unshuffled is empty then return 
  #set counter to zero outside loop and use it to get the random item
  item_counter = 0
  unshuffled.each do |item|
    if item_counter == random_index
       item_push = item
       shuffled.push item_push
       #remove item from unshuffled 
       unshuffled.delete_at(random_index)
    end   
    item_counter +=1
  end
  recursive_shuffle unshuffled, shuffled
end    
def shuff #Apparently shuffle is built in so called it shuff not to confuse things
  # your code here
  arr = self
  recursive_shuffle arr, []
end
end #class Array  
#my_array = ['ab' ,'c', 'smelly', 'me']
#print my_array.shuff
#puts 55.old_roman_numeral
