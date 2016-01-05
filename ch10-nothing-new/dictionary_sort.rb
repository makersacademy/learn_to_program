def dictionary_sort arr
   solution = []
   arr.each do |item|
   	 inserted = false
     if solution.length > 1
       solution.each.with_index do |i, ind|
         if item.downcase < i.downcase
          solution.insert(ind, item)
          inserted = true
          break
         end
       end
       solution << item unless inserted
     end
     solution << item and next if solution.length == 0
     if solution.length == 1
       solution << item if item.downcase > solution[0].downcase
       solution.insert(0, item) if item.downcase < solution[0].downcase
     end
   end
   solution
end