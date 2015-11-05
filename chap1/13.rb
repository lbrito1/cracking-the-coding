# This one is rather ambiguous, so I assumed a few things.

require './util/test'

def sol input
	for i in (0..input.size - 2)
		for j in (i+1..input.size - 1)
			while (input[i] == input[j])
				suffix = ""
				suffix += input[j+1..input.size] unless j == input.size-1
				input = input[0..j-1] + suffix
			end
		end
	end
	input
end

(sol "abb").should_be "ab"
(sol "asdfff").should_be "asdf"
(sol "111111").should_be "1"
(sol "1131").should_be "13"