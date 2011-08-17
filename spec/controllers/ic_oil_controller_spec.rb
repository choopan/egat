require 'spec_helper'

describe IcOilController do

  describe "GET 'oil_store'" do
    it "should be successful" do
      get 'oil_store'
      response.should be_success
    end
  end

  describe "GET 'oil_withdraw'" do
    it "should be successful" do
      get 'oil_withdraw'
      response.should be_success
    end
  end

  describe "GET 'oil_buy'" do
    it "should be successful" do
      get 'oil_buy'
      response.should be_success
    end
  end

  describe "GET 'oil_calculate'" do
    it "should be successful" do
      get 'oil_calculate'
      response.should be_success
    end
  end

  describe "GET 'oil_calresult'" do
    it "should be successful" do
      get 'oil_calresult'
      response.should be_success
    end
  end

  describe "GET 'oil_period'" do
    it "should be successful" do
      get 'oil_period'
      response.should be_success
    end
  end

end
