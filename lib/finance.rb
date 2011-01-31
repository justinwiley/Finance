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
end