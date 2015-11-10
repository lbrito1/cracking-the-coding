def run_chapter n
	lnstr = "\n==============================\n"
	puts "#{lnstr}Running tests for Chapter #{n}#{lnstr}"
	Dir["chap#{n}/*.rb"].each do |file| 
		puts "\nExercise #{file.to_s}..."
		load file
	end
end

run_chapter 1
run_chapter 2

puts "\n"