require './util/test'

def sol input
	htmlwhite = '%20'
	strsize = input.size
	i = 0
	while i < strsize
		while input[i] == "\s"
			if i == 0
				input = htmlwhite + input[i+1..input.size-1]
			elsif i == input.size-1
				input = input[0..input.size-2] + htmlwhite
			else
				input = input[0..i-1] + htmlwhite + input[i+1..input.size-1]
			end
			i += htmlwhite.size - 1
			strsize = input.size
		end
		i += 1
	end
	input
end


(sol "   a   ").should_be "%20%20%20a%20%20%20"
(sol "   a   b   c   ").should_be "%20%20%20a%20%20%20b%20%20%20c%20%20%20"