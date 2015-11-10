require './util/test'

class Stack
		class Node
		attr_accessor :next, :val
		def initialize val
			@next = nil
			@val = val
		end
	end

	attr_accessor :top

	def pop
		return nil if !@top
		n = @top
		@top = @top.next
		n
	end

	def push val
		n = Node.new val
		n.next = @top
		@top = n
	end

end

def test
	x = Stack.new
	x.push 1
	x.push 3
	x.push 5
	x.pop.val.should_be 5
	x.pop.val.should_be 3
	x.pop.val.should_be 1
	x.pop.should_be nil
end
