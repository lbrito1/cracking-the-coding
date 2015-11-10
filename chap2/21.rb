require './chap2/inc/20'
require './util/test'

def sol input
	counter = Hash.new 0
	n = input.head
	while n
		counter[n.val] += 1
		(input.delete n.val) if counter[n.val] > 1
		n = n.next
	end
end

x = LinkedList.new
x.add 1
x.add 1
x.add 1
x.add 2
x.add 2
x.add 3
x.add 5
x.add 3
sol x
(x.to_s).should_be " 1 2 5 3"