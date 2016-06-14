global_var = "I am a global variable."

def IAmMethod (param)
	global_var = nil
	puts "ha, 'global_var' is now nil."
end

IAmMethod (global_var)
puts global_var
