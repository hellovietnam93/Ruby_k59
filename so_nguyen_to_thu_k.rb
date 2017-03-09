def is_prime? n
	if n <= 1
		false
	elsif n == 2
		true
	else
		(2..Math.sqrt(n)).none?{ |i| n%i == 0 }
	end
end


def snt_thu_k k # tra ve so nguyen to thu k
	if k <= 0	# neu k==0 tra ve nil
		nil
	else		# voi k >=1
		i = 0
		n = 2	# bat dau tu n=2
		while  i < k do		# i==k se thoat vong lap
			if(is_prime? n)
				i += 1
			end
			n += 1
		end
		n-1		# tra ve n-1
	end
end

puts snt_thu_k 10


