require 'byebug'

class Object
	def should_be val
		if self == val 
			puts "Passed!" 
		else
			puts "Error! Expected '#{val}', got '#{self.to_s}'"
		end
	end
end