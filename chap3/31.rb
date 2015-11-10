require './util/test'

class NStack
	attr_accessor :ar, :n, :p

	def initialize i, n
		@i = i
		@n = n
		@ar = Array.new i*n
		@p = []
		for k in (0..i-1)
			@p << k*n
		end
	end

	def push i, val
		pos = p[i]
		if pos < ((i+1)*@n)
			p[i] += 1
			@ar[pos] = val
		else
			nil	# stack is full
		end
	end

	def pop i
		pos = p[i]
		if pos > i*@n
			p[i] -= 1
			@ar[p[i]]
		else
			nil # stack is empty
		end
	end
end

x = NStack.new 3, 5
for i in (0..4)
	(x.push 0, i).should_be i
	(x.push 2, i).should_be i
end
(x.push 0, 9).should_be nil
(x.pop 0).should_be 4
(x.pop 0).should_be 3
(x.pop 2).should_be 4
(x.pop 2).should_be 3
(x.pop 2).should_be 2
(x.pop 1).should_be nil
