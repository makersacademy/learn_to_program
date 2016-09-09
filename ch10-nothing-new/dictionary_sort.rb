def dictionary_sort arr
  unsorted=[]
  sorted=[]
  
  
  puts "Type the words that you want me to alphabetise"
  #can I delete this next line? does the while loop handle this?
  user_input=gets.chomp.downcase
  
  while user_input !=''
    unsorted_words.push(user_input)
    user_input=gets.chomp.downcase
  end
  
  #each iterates over unsorted and compares them, finding the smallest
  unsorted.each do |x,y|
      if x < y
          
      end
  end
  
  
  #the smallest word is pushed to sorted
  
  #this is done recursively until unsorted is empty, at which point the program
  #probably stops itself
  
 
  puts sorted
  
end