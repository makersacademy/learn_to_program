def dictionary_sort arr
  
end

# Ideas for how to solve dictionary_sort:

# create a hash where each word is assigned to a symbol key. key name is generated
# by downcasing the string, value retains capitalisation.
# run sort on the keys
# output sorted keys to an array
# puts the values of the symbol key

# __________________________________________________________

# Having looked at the solution I realise I inefficiently over engineered the
# solution to this one. The only change that is required  to the sort.rb program
# is to downcase the elements as they are being tested. The downcasing doesn't
# affect the element as it creates a copy to work with.