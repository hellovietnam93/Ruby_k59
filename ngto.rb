def check_prime n 
	i = 2 
	check = 0
	(2..Math.sqrt(n)).each do |i|
		
		if n % i == 0 then  
			check =1
			break
		end	
	end
	return check
end

def ngto_n n
	dem = 0 
	i =2 
	while dem != n do 
		a =  check_prime i
		if a== 0 then
			dem += 1
		end
			i += 1 
	end

	i -= 1
	puts i
end


ngto_n 10
ngto_n 100
ngto_n 1000
ngto_n 10000




