module Finance
  def pv(v,r,n,m=1)
    v/((1+r/m)**n)
  end

  def fv(v,r,n,m=1)
    v*((1+r*m)**n)
  end
  
  def npv(v1,v2,r,n,m1=1,m2=1)
    pv(v1,r,n,m1) - pv(v2,r,n,m2)
  end
  
  def pva(a,i,n)
    a*(1-((1+i)**-n))/i
  end
  
  def pvb(c,f,r,t,m=1)
    n = t*m
    ir = 1+r/m
    face_value = f/ir**n
    return face_value if c == 0  # handle zero-coupon bonds
    coupon_value = (0..n).inject{|s,v| s+(c/ir**v)}
    coupon_value + face_value
  end
  
end