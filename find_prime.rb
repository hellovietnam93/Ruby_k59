# tim so ngto thu n
def is_prime? n
	if n <= 1
		false
	elsif n == 2
		true
	else 
		(2..n/2).none? {|i| n%i == 0}
	end
end

def find_prime a, b, n
	primes = []
	(a..b).to_a.each {|i| primes << i if is_prime? i}
	p primes
	return primes[n-1]
end
n = 10
puts "So ngto thu #{n} la: "
p find_prime 0, 100, n