require 'spec_helper'

describe TransformerInfoController do

  describe "GET 'txlist'" do
    it "should be successful" do
      get 'txlist'
      response.should be_success
    end
  end

  describe "GET 'txadd'" do
    it "should be successful" do
      get 'txadd'
      response.should be_success
    end
  end

  describe "GET 'txlistmove'" do
    it "should be successful" do
      get 'txlistmove'
      response.should be_success
    end
  end

  describe "GET 'txaddmove'" do
    it "should be successful" do
      get 'txaddmove'
      response.should be_success
    end
  end

  describe "GET 'failurereport'" do
    it "should be successful" do
      get 'failurereport'
      response.should be_success
    end
  end

end
