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
def bcnn a,b # tim boi chung nho nhat cua a,b
	(b*a)/(ucln a,b)
end
a = [4,2,6]
def bcnn_mang array # tim boi chung nho nhat cua mang
	@x=array[0]
	array.each {|i| @x=bcnn @x,i}
	@x
end
p bcnn_mang a