tough_var = 'You can\'t even touch my variable!'

def little_pest tough_var
	tough_var = nil
	puts 'HAHA! I ruined your variable!'
end

little_pest tough_var
puts tough_var