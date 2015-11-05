require './util/test'

def sol a, b
	return false if a.size != b.size
	counter_a = Hash.new 0
	counter_b = Hash.new 0
	for i in (0..a.size-1)
		counter_a[a[i]] += 1
		counter_b[b[i]] += 1
	end
	counter_a.each do |k|
		return false if counter_a[k] != counter_b[k]
	end
	true
end

(sol "roma", "amor").should_be true
(sol "roma", "amorr").should_be false
(sol "rrr", "rrr").should_be true
(sol "banana", "nanaba").should_be true