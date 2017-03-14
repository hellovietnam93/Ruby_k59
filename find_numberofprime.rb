/so nguyen to thu n/
def is_prime? n
 if n<= 1
 false
 elsif n==2
 true
 else
 (2..n/2).none? {|i| n%i==0} 
 end 
end

def find_prime n
primes = []
(2..1000).to_a.each{ |i| primes << i if is_prime?i }
p primes[n-1]
end
find_prime 20
