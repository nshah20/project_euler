def sum_of_all_multiples
	multiples_sum = 0
	(1..999).each do |i|
		if i % 3 == 0 || i % 5 == 0 
			multiples_sum +=i	
		end
	end
	return multiples_sum
end
