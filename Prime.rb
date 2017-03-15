def is_prime? n
	if(n<=1)
		false
	elsif n==2
		true
	else
		(2..n/2).none?{|i| n%i==0}
	end
end
def find_primes a,b,n
	primes=[]
	i=1
	(a..b).to_a.each{|x| primes<<x if is_prime?x}
	#primes.each{|x,y| puts y}
	primes.each{
		|x|
		puts x if i==n
		i=i+1
	}
end
find_primes 2,100,4