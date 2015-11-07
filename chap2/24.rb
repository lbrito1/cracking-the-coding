require './chap2/20'
require './util/test'

def sol la, lb
	sum = LinkedList.new
	na = la.head
	nb = lb.head
	va = 0
	vb = 0
	carry = 0

	while (na || nb)
		va = na ? na.val : 0
		vb = nb ? nb.val : 0
		quant = carry + va + vb

		if quant >= 10
			carry = 1
			quant -= 10
		else
			carry = 0
		end
			
		sum.add quant
		na = na.next
		nb = nb.next
	end
	sum
end

la = LinkedList.new
la.add 3
la.add 1
la.add 5
lb = LinkedList.new
lb.add 5
lb.add 9
lb.add 2
(sol la, lb).to_s.should_be " 8 0 8"