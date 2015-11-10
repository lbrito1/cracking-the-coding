require './util/test'

class ThreeStack
	attr_accessor :ar, :n, :p0, :p1, :p2

	def initialize n
		@n = n
		@ar = Array.new 3*n
		@p0 = 0
		@p1 = n
		@p2 = 2*n
	end

	def push i, val
		pos = self.send "p#{i}"
		if pos < ((i+1)*@n)
			self.send("p#{i}=", pos + 1)
			@ar[pos] = val
		else
			nil	# stack is full
		end
	end

	def pop i
		pos = self.send "p#{i}"
		if pos > i*@n
			self.send("p#{i}=", pos - 1)
			@ar[pos - 1]
		else
			nil # stack is empty
		end
	end
end

x = ThreeStack.new 5
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