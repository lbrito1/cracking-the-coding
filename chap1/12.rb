require './util/test'

def sol string
	output = ""
	for i in (0..(string.size - 1)) do 
		output = string[i] + output
	end
	output + "\0"
end

(sol "abcd").should_be "dcba\0"