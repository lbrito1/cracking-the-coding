require './util/test'

# Implement an algorithm to determine if a string has all unique characters. 
# What if you can not use additional data structures?

def sol1 string
	buf = []
	for i in (0..string.size)
		return false if buf.include? string[i]
		buf << string[i]
	end
	true
end

def sol2 string
	for i in (0..string.size)
		for j in (i+1..string.size)
			return false if string[i] == string[j]
		end
	end
	true
end

def test
	allunique1 = "abcd"
	allunique2 = "a"
	repeated1 = "aa"
	repeated2 = "abcc"

	(sol1 allunique1).should_be true
	(sol1 allunique2).should_be true
	(sol2 allunique1).should_be true
	(sol2 allunique2).should_be true

	(sol1 repeated1).should_be false
	(sol1 repeated2).should_be false
	(sol2 repeated1).should_be false
	(sol2 repeated2).should_be false
end

test