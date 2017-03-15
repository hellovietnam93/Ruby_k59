=begin
def timUoc a
	uoc=[]
	(1..a).to_a.each{|x| uoc<<x if a%x==0}
	puts uoc
end
=end

def ucln a,b
	if b==0
		return a
	else
		return ucln(b, a%b)
	end
end

def find_bcnn a,b
	a*b/(ucln a,b)
end
mang=[1,2,3,4,5]
def find_ucln_array mang
	#puts mang.at(1)
	a = ucln mang.at(0), mang.at(1)
	b=mang.at(0)*mang.at(1)/a
	for i in (2..mang.size-1)
		a = ucln a, mang.at(i)
	end
	return a
end
print("UCLN cua mang #{mang} la: ")
p find_ucln_array mang
#puts (4*20/n)
def find_bcnn_array mang
	a=find_bcnn mang.at(0), mang.at(1)
	for i in (2..mang.size-1)
		a=find_bcnn a, mang.at(i)
	end
	return a
end
print("BCNN cus mang #{mang} la: ")
p find_bcnn_array mang