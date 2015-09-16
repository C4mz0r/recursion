def merge_sort (array)	
	#puts "Trying to merge sort #{array}"
	items = array.length
	first = [], second = []

	if items > 1
		first = merge_sort(array[0...items/2])	
		second = merge_sort(array[items/2..items])
	elsif items == 1
		first = array
		second = []
	end
	
	merge(first, second)	
end

# Merge two sorted arrays into another array and return it
def merge(first, second)
	merged = []

	if first.nil?
		merged = second
	elsif second.nil?
		merged = first
	else
		first_length = first.length
		second_length = second.length

		# compare the first items of both input arrays
		# slice the lowest value off the front and stick it in the merged array
		# repeat until the merged array is filled up
		loop do	
			if ( min(first[0], second[0]) == first[0] )				
				merged << first.shift
			elsif ( min(first[0], second[0]) == second[0] )
				merged << second.shift
			end

			break if merged.length == first_length + second_length
		end
	end

	merged
end

# Helper function to find the minimum between two values
# But if one of the values is nil, then returns the non-nil one
def min(a,b)
	if !a.nil? and !b.nil?
		return a if a <= b
		return b
	end	
	
  	return a if !a.nil? 

	return b if !b.nil?
end

# testing
100.times do
	puts merge_sort((1..10).to_a.shuffle).inspect
end

