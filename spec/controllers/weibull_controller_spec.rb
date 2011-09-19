require 'spec_helper'

describe WeibullController do

  describe "GET 'weibull_select'" do
    it "should be successful" do
      get 'weibull_select'
      response.should be_success
    end
  end

  describe "GET 'weibull_calculation'" do
    it "should be successful" do
      get 'weibull_calculation'
      response.should be_success
    end
  end

  describe "GET 'weibull_chart'" do
    it "should be successful" do
      get 'weibull_chart'
      response.should be_success
    end
  end

  describe "GET 'weibull_detail'" do
    it "should be successful" do
      get 'weibull_detail'
      response.should be_success
    end
  end

end
