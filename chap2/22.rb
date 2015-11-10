require './chap2/inc/20'
require './util/test'

# (n-m)th element

# Linear time O(2n)
# Just find the size and return n-mth node
def sol1 input, m
	node = input.head
	sz = 0
	while node.next
		sz += 1
		node = node.next
	end
	return nil if sz < m

	node = input.head
	for i in (0..(sz-m)-1)
		node = node.next
	end
	node
end

# Linear time, slightly improved but also O(2n) worst case
# We keep nodes A and B m nodes apart; the problem
# is then reduced to moving B to the list tail
def sol2 input, m
	node_a = input.head
	node_b = input.head
	for i in (0..m-1)
		node_b = node_b.next
		return nil if node_b.nil?
	end
	while node_b.next
		node_a = node_a.next
		node_b = node_b.next
	end
	node_a
end

x = LinkedList.new
x.add 'a'
x.add 'b'
x.add 'c'
x.add 'd'
(sol1 x, 0).val.should_be 'd'
(sol1 x, 1).val.should_be 'c'
(sol1 x, 3).val.should_be 'a'
(sol1 x, 5).should_be nil
(sol2 x, 0).val.should_be 'd'
(sol2 x, 1).val.should_be 'c'
(sol2 x, 3).val.should_be 'a'
(sol2 x, 5).should_be nil