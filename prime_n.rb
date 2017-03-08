def Is_prime? a
if a<=1
return false
end
if a==2
return true
end
(2..a/2).to_a.none?{ |x| a%x==0}
end
def Primes_n n
i=1
x=2
until i==n
x+=1
if Is_prime?(x) == true
i+=1
end
end
return x
end
