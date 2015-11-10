require './chap2/inc/20'
require './util/test'

def sol input
	n = input.head
	ct = Hash.new 0
	while n
		return n if (ct[n] += 1) > 1
		n = n.next
	end
	nil
end

x = LinkedList.new
x.add 'a'
x.add 'b'
n1 = x.add 'c'
x.add 'd'
n2 = x.add 'e'
n2.next = n1

(sol x).val.should_be 'c'