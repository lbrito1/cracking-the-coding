require './chap2/inc/20'
require './util/test'

def sol input
	input.val = input.next.val
	input.next = input.next.next
end

x = LinkedList.new
x.add 'a'
x.add 'b'
x.add 'c'

n = x.head.next
sol n

n = x.head
n.val.should_be 'a'
n = n.next
n.val.should_be 'c'
n = n.next
n.should_be nil
