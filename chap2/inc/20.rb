class LinkedList
	attr_accessor :head, :tail

	class Node
		attr_accessor :next, :val
		def initialize val
			@next = nil
			@val = val
		end
	end

	def add val
		n = Node.new val
		if @head.nil?
			@head = @tail = n
		else
			@tail.next = n
			@tail = @tail.next
		end
		n
	end

	def delete val
		return nil if !@head
		if @head.val == val
			removed = @head
			@head = @head.next
			return removed
		else
			n = @head
			while n.next
				if n.next.val == val
					removed = n.next
					n.next = n.next.next
					return removed
				end	
				n = n.next
			end
		end
		nil
	end

	def to_s
		str = ""
		n = @head
		while n 
			str = "#{str} #{n.val}"
			n = n.next
		end
		str
	end
end

def test
	l = LinkedList.new
	l.add 1
	l.add 3
	puts l.to_s
	l.delete 1
	puts l.to_s
	l.delete 3
	puts l.to_s
	l.delete 3
	l.add 2
	puts l.to_s
	l.add 4
	puts l.to_s
	l.delete 4
	puts l.to_s
	l.delete 2
	puts l.to_s
end
