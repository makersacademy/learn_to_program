def dictionary_sort arr
  dic = Hash.new
  diction = Array.new
  cap = 0
  arr.each {|k|
    if k == k.capitalize
      cap = 1
      dic[k.downcase] = cap
    else
      cap = 0
      dic[k] = cap
    end
    diction.push(k.downcase)
  }

  diction.sort!
  dic_order = Array.new
  diction.each {|r|
    cap = dic[r]
    if cap == 1
      r.capitalize!
    end
    dic_order.push(r)
  }
  dic_order
  
end

p dictionary_sort ["Abby", "jack", "hello", "Dude", "Zac"]