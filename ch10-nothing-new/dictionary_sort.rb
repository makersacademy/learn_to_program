def dictionary_sort arr
  ary = arr
  b = 0

  while b < ary.length
    c = b+1

    while c < ary.length
      if ary[b] < ary[c]           #if b is "less than" c in value...
        ary[b] , ary[c] = ary[c] , ary[b]   #switch them round
      end
      c += 1  #increments second loop first
    end
    b += 1
  end
  ary.reverse #.join(" ")
end


 # words = ['can','feel','singing.','like','A','can']
 # puts(dictionary_sort(words).join(' '))
