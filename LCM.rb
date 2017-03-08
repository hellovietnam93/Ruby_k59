def GCF_of a,b
if a<b
r=a
a=b
b=r
end
if b==0
return a
end
return GCF_of(b,a%b)
end
def LCM a,b
x=(a*b)/GCF_of(a,b)
end
def LCM_array a #LCM of array
t=1
a.each do|x|
t=LCM(t,x)
end 
return t
end
