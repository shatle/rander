# coding: utf-8
#

require 'spec_helper'

describe Rander do 

  context "No except" do 
    before(:each) do 
      @code = Rander.gen
    end
  
    it "should be 'odfsdi'" do 
      # maybe this should be always fail
      expect(@code).to eq('odfsdi')
    end
  
    it "should be 6 chars" do 
      expect(@code.length).to eq(6)
    end
  end

  context "Except 6,7" do 
    before(:each) do 
      @code = Rander.gen([6,7])
    end
  
    it "should not have number 6" do 
      expect(@code).not_to include("6")
    end

    it "should not have number 7" do 
      expect(@code).not_to include("7")
    end 
  end 

end
