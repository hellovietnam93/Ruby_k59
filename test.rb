=begin
 def check? a
    if a == 1 
	false
    elsif a == 2 
	true
    else 
	(2..a/2).none?{ |i| a%i == 0}
    end
end
#tim snt trong 1 day
array = []
def find_primes a, b, c
    (a..b).each_with_index do |i| 
	if check? i 
		c << i
	end
    end
end

find_primes 5, 100, array
p array	
#Homework: tim snt thu n trong day so nguyen
def find_primes_at_n a, b, array, n
    (a..b).each_with_index do |i| 
	if check? i 
		array << i
	end
    end
    array[n-1]
end

p find_primes_at_n 0, 100, array, 3
=end

#tim cac uoc cua 1 so nguyen

def find_uocs a
	array = []
	(1..a).each_with_index do |i|
		if a%i == 0
			array << i
		end
	end
	array
end
#p find_uocs 9

#tim uoc chung cua 2 so nguyen
def find_ucs a, b
	find_uocs(a) & find_uocs(b)
end

#p find_ucs 6, 8

#tim UCLN cua 2 so

def find_ucln a, b
	array = []
	array = find_ucs(a, b)
	array[array.size - 1]
end

def find_bcnn a, b
	a * b / find_ucln(a,b)
end

#p find_ucln 5, 6
				
def find_bcnn_of_array 
	array = [1, 3, 4, 6, 11]
	a = find_bcnn(array[0], array[1])
	for i in 2...array.size do
		a = find_bcnn(a, array[i])
	end
	return a
end

p find_bcnn_of_array

