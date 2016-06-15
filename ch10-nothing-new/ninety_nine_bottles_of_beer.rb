def bottles(n)
   # Method which sings the bottles of beer song with n verses
   while n > 0
      if n > 1
         puts "#{n} bottles of beer on the wall,"
      else
         puts "#{n} bottle of beer on the wall,"
      end

      if n > 1
         puts "#{n} bottles of beer."
      else
         puts "#{n} bottle of beer."
      end


      puts "Take one down, pass it around,"
      if n > 2
         puts "#{n-1} bottles of beer on the wall."
      elsif n == 2
         puts "#{n-1} bottle of beer on the wall."         
      else
         puts "No more bottles of beer on the wall."
      end
      puts ""
      n -= 1
   end
end

bottles(5)
