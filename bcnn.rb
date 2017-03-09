def uc? arr, x
  arr.each do |i|
    if(i%x != 0)
      return false
    end
  end
  return true
end

def ucln array
  uc = []
  min_mem = array.min
  (1..min_mem).each do |x|
    if(uc?(array,x))
      uc << x
    end
  end
  return uc.last
end

def bcnn array
  tich = 1
  array.each do |x|
    tich = tich*x
  end
  return bcnn = tich/ucln(array)
end
puts bcnn([8,12,16])
