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
def GCF_array a #GCF of array
   t=0
   a.each do|x|
   t=GCF_of(t,x)
   end 
   return t
   end
a=[10,15,20]
GCF_array(a)

