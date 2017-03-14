def check? a #kiem tra so nguyen to
	if a==1 
		false
	elsif a==2
		true
	else
		(2..a/2).none?{ |i| a%i ==0 }
		end

			
end
array = Array.new
def khoang a, b , d  #tim cac so nguyen to trong khoang
	(a..b).each_with_index do |i|
		if check? i
			d << i
		end
	end
end
def so_thu_n a,n #tim so nguyn to thu n
	a.each_with_index {|i,x| p i if x==n}
end
khoang 10,20,array
so_thu_n array,2