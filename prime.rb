def is_prime? n
	@count = 0
	if n <= 1 
		false
	else
		(1..n).each{|i| @count+=1 if n%i == 0}
		if @count == 2 then true
		else false
		end
	end
end
	
def find_primes a, b
	primes = []
	(a..b).to_a.each{|x| primes << x if is_prime? x}
	puts primes
end

def find_prime count
	if count <= 0 
		nil
	else
		n = 2		
		(1..count).each{
			until is_prime? n # tăng n cho đến khi n là nguyên tố 
				n+=1
			end	
			n+=1 
		}
		n-1 # return n-1 do lần cộng cuối
	end	
end


#puts is_prime? 6
find_primes 2, 50
puts "\n"
puts find_prime 8
