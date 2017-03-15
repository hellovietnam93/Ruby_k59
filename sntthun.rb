def is_primes? n
	if n <= 1
		false
	elsif n == 2
		true
	else
		(2..n/2).none?{|i| n % i == 0}
	end
end

def find_prime n
	primes = []
	i = 2
	count = 0
	while i > 1 && count != n
		if is_primes? i
			primes << i
			count = count + 1
		end
		i = i + 1
		if count == n
			puts primes
		end
	end
end

find_prime 6
		