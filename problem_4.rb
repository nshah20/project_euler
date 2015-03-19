
def is_palindrome?(num) #Checks for palindrome
	if num.to_s == num.to_s.reverse
		true
	else
		false
	end
end

def three_digits?(num) #Checks if our palindrome has any multiples with 3 digits
	990.downto(100).each do |i|
		if num % i == 0
			other_integer = num / i 
				if other_integer.to_s.length == 3 #check if other_integer is 3 digits
					return true
				end
		end
	end
	false
end




def largest_palindrome
	lowest_product = 10000 #// This is the smallest product for two 3 digit numbers. Multiplied 100 by 100
	highest_product = 998001 #// This is the largest product for two 3 digit numbers. Multiplied 999 by 999
	highest_product.downto(lowest_product).each do |num|
		if is_palindrome?(num) == true && 
			if three_digits?(num) == true
				return num
			end
		end
	end
end
