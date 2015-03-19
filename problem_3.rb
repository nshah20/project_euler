def largest_prime_factor(number)
	max_prime = number
	(2..Math.sqrt(number).to_i).each do |num|
		if max_prime <= num
			return max_prime
		end
		max_prime /= num while (max_prime > num && max_prime % num == 0 )
	end
    max_prime
end





