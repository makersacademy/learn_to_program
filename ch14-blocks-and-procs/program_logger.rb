def log desc, &block
  # your code here
  #OUTPUT ------------------------
  #beginning "outerblock"
  #Beginning "some little block"
  # ..... "some little block" finished, returning
  #5
  #Beginning "yet another block"
  #finished returning
  #I like Thai food!
  #outer block finished, returnign false
  #OUTPUT must be as above--------
  #desc keyword, << operator???
  puts "Beginning \"" + desc + "\" ... "
  output = block.call
   puts '... "' + desc +'" finished, returning: '+ output.to_s
   end
   
  #log required: outer + some little block
  
  log outerblock do
      log some little block do
          5
  end
  log 'yet another block' do 
  'I like Thai food!'
  end
  end
  #----Solution uses 1**1 + 2**2 over 5???