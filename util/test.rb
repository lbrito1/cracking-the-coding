require 'byebug'

class Object
	def should_be val
		if self == val 
			print "Passed! " 
		else
			puts "Error! Expected '#{val}', got '#{self.to_s}'"
		end
	end
end