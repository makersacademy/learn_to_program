class Array
 def each_even(&was_a_block_now_a_proc)
   is_even = true
   self.each do |object|
    if is_even
      was_a_block_now_a_proc.call object
   end
   is_even = !is_even
 end
end
end

pets = ['dogs','cats','chickens','lamas','horses']
pets.each_even do |animals|
  puts "I love having #{animals}"
end

