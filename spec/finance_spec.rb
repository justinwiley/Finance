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
    
    it "accepts a number, discount rate, and time period and return a time discounted value" do
      pv(10,0.1,2).r.should == 8.2645 
    end
    
    it "should compound discount rates" do
      pv(10,0.1,3).r.should == 7.5131
    end
    
    it "should assume period 2 given no time value" do
      pending
      pv().should == 1
    end
  end
  
  describe "Future Value" do
    it "accepts a number, discount rate, and time period and returns amortized value" do
      fv(10,0.1,1).r.should == 11.0000
    end
    
    it "should compound discount rates" do
      fv(10,0.1,2).r.should == 12.1000
    end
  end
  
  describe "Net Present Value" do
    it "accepts two numbers, a discount rate, and a time period and returns net present value" do
      npv(15,10,0.1,1).r.should == 4.5455
      #12.39 - 8.26
    end
  end
end