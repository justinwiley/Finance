$: << '../'

require 'finance.rb'
include Finance

class Float  # todo bleh
  def r
    self.round(4)
  end
end

describe Finance do

  describe "Exceptional behaviour" do
    it "should not allow non-floats, after hard type cast"
  end


  describe "Present Value" do
    it "should not allow r's higher than 1"
    it "should range time scale -1 < n"
    it "should assume period 2 given no time value" 

    it "accepts a number, discount rate, and time period and return a time discounted value" do
      pv(10,0.1,2).r.should == 8.2645 
    end
    
    it "should compound discount rates" do
      pv(10,0.1,3).r.should == 7.5131
    end
 
    it "should compound discount rates" do
      pv(10,0.1,3).r.should == 7.5131
    end
 
    it "should accept an optional period per annum" do
      pv(10,0.1,3,2).r.should == 8.6384
    end    
  end
  
  describe "Future Value" do
    it "accepts a number, discount rate, and time period and returns amortized value" do
      fv(10,0.1,1).r.should == 11.0000
    end
    
    it "should compound discount rates" do
      fv(10,0.1,2).r.should == 12.1000
    end
    
    it "should accept an optional period per annum" do
      fv(10,0.1,2,2).r.should == 14.4
    end    
  end
  
  describe "Net Present Value" do
    it "accepts two numbers, a discount rate, and a time period and returns net present value" do
      npv(15,10,0.1,1).r.should == 4.5455
      #12.39 - 8.26
    end
    
    it "should accept two optional periods per annum" do
      npv(15,10,0.1,1,2,2).r.should == 4.7619
    end
  end
  
  describe "Present Value of Annuity" do
    it "should accept annuity payment, interest rate, and period and return pv of annuity" do
      pva(1000,0.1,5).r.should == 3790.7868
    end
  end

end