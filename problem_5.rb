def prime_factorization 
	prime_factors = {}
	(2..20).each do |int|
		(2..int).each do |num|
		count = 0
			if num != int && num < int && int % num == 0
					 while int % num ==0 && int >= num do
					 	int /= num
					 	count+=1
					 end
					if prime_factors[num]
						original_count = prime_factors[num]
						if count > original_count
							prime_factors[num] = count
						end
					else	
						prime_factors[num] = count
					end
			end
			if num == int
				prime_factors[num] = 1
			end
		end
	end
	prime_factors
end

def smallest_multiple
	prime_factors = prime_factorization
	lowest_multiple = 1
	prime_factors.each do |key,value|
		lowest_multiple *= key ** value
	end
	lowest_multiple
end
puts smallest_multiple