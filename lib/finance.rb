module Finance
  def pv(v,r,n)
    v/((1+r)**n)
  end

  def fv(v,r,n)
    v*((1+r)**n)
  end
  
  def npv(v1,v2,r,n)
    pv(v1,r,n) - pv(v2,r,n)
  end
end