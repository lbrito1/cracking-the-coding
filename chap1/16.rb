require './util/test'

def sol input
	n = input.size
	return false if input[0].size != n

	# transpose
	for i in (0..n-1)
		for j in (i..n-1)
			tmp = input[j][i]
			input[j][i] = input[i][j]
			input[i][j] = tmp
		end
	end

	# swap
	for i in (0..n-1)
		for j in (0..(n)/2)
			tmp = input[i][(n-1)-j]
			input[i][(n-1)-j] = input[i][j]
			input[i][j] = tmp
		end
	end
	input
end

mat_a = [['a','b','c'],['d','e','f'],['g','h','i']]
(sol mat_a).should_be ([["g", "d", "a"], ["h", "e", "b"], ["i", "f", "c"]])