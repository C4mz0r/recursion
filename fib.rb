# Recursive Fibonacci implementation
def fibs_rec(n)
	return n if n == 0 or n == 1
	fibs_rec(n-2) + fibs_rec(n-1)
end

# Iterative Fibonacci implementation
def fibs(n)
	return n if n == 0 or n == 1	
	n_minus_2 = 0	
	n_minus_1 = 1
	current = 0
	for i in (2..n)
		current = n_minus_2 + n_minus_1
		n_minus_2 = n_minus_1 	# update for next iteration
		n_minus_1 = current	# update for next iteration
	end
	current	
end

puts fibs_rec 7 # Should give 13
puts fibs 7 # Should give 13
