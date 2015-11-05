require './util/test'

def sol input
	zeros_m = []
	zeros_n = []
	m = input.size
	n = input[0].size
	for i in (0..m-1)
		next if zeros_m.include? i
		for j in (0..n-1)
			next if zeros_n.include? j
			if (input[i][j] == 0)
				zeros_m << i
				zeros_n << j
			end
		end
	end
	zeros_m.each { |i| input[i].map! { 0 } }
	zeros_n.each do |j|
		input.map! do |m|
			m[j] = 0
			m
		end
	end
	input
end

mat_a = [[1,2,3],[4,5,6],[7,8,9]]
mat_b = [[0,2,3],[4,5,6],[7,8,9]]
sol_b = [[0,0,0],[0,5,6],[0,8,9]]
mat_c = [[1,2,3],[4,0,6],[7,8,9]]
sol_c = [[1,0,3],[0,0,0],[7,0,9]]

(sol mat_a).should_be mat_a
(sol mat_b).should_be sol_b
(sol mat_c).should_be sol_c