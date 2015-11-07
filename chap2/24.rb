require './chap2/20'
require './util/test'

def sol la, lb
	sum = LinkedList.new
	na = la.head
	nb = lb.head
	carry = 0

	while (na || nb)
		quant = carry + (na ? na.val : 0) + (nb ? nb.val : 0)
		if quant >= 10
			carry = 1
			quant -= 10
		else
			carry = 0
		end
		sum.add quant
		na ? na = na.next : na
		nb ? nb = nb.next : nb
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

la = LinkedList.new
la.add 3
la.add 1
lb = LinkedList.new
lb.add 9
lb.add 2
lb.add 2
(sol la, lb).to_s.should_be " 2 4 2"