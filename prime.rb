def is_prime(n)
	if n % 2 == 0
		return false
	end
	m = 3
	while m < n**0.5+1
		if n % m == 0		
			return false
		end
		m+=2
	end
	true
end

def n_prime(n)
	count=1
	x=3
	while count < n
		if is_prime(x)
			prime = x
			count+=1
		end
		x+=2
	end
	puts prime
end
 
n_prime(13)