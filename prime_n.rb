def is_prime? (n)
	if(n <= 1)
		false
	elsif n ==2
		true
	else
		(2..n/2).none?{|i| n % i == 0}
	end	
end

# tim so nguyen to thu n
def prime_n (n)
	i = 0
	j = 1
	while i != n
		if is_prime?j
			i+=1
			j+=1
		elsif 
			j+=1
		end
	end
	return j-1
end

puts prime_n (6)
