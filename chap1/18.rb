require './util/test'

def sol a, b
	return false if a.size != b.size || a.size < 1
	for i in (0..b.size-1) 
		return b[i..b.size-1] + b[0..i-1] == a if a.include? b[i..b.size-1]
	end
end

(sol "waterbottle", "erbottlewat").should_be true
(sol "waterbottle", "erbotaatlewat").should_be false
(sol "collection", "tioncollec").should_be true