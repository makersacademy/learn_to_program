
def doWithOrWithoutParam (param)
	if param
		puts "Your parameter is #{param}."
	else
		puts "Hello! You have no parameter. But, that is alright too."
	end
end

puts "the method with a parameter: "
doWithOrWithoutParam "monkey"
# Below will throw an error because monkey without quotes is a variable, and it is not defined in this file.
#   doWithOrWithoutParam monkey

puts "The method without a parameter: "
# Below will throw an error.
#   doWithOrWithoutParam

# Below does not throw an error.
    doWithOrWithoutParam ()

# Below does not throw an error without parentheses! If parameter is set to nil in the method like this...
def noParenthesesNeeded(param=nil)
	if param
		puts "Your parameter is #{param}."
	else
		puts "Hello! You have no parameter. But, that is alright too."
	end
end

noParenthesesNeeded	

    



