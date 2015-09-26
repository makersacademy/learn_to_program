word = 'Peorge'
puts word [0,2]
if word[0] == 'G'
  word = word [2,(word.length - 2)]
end
puts word