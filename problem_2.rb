def even_fibonacci_numbers
	sum = 0
	array = [0,1]
	while true do
		last_number = array[-1]+array[-2]
		if last_number < 4000000
			array << last_number
			if last_number % 2 == 0
				sum += last_number
			end
		else
			return sum
		end
	end
end

