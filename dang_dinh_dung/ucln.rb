def ucln a,b # tim uoc chung lon nhat cua a,b
	while a!=0 && b!=0
		if a>b
			a-=b
		else
			b-=a
		end
		if a==0
			return b
		elsif b==0
			return a
		end
		
	end
end
a = [3,6,9]
def ucln_mang a #tim uoc chung lon nhat cua mang a
	@x = a[0]
	a.each{ |i| @x = ucln @x,i}
	@x
end
p ucln_mang a


