require 'spec_helper'

describe ManufacturingController do

  describe "GET 'station'" do
    it "should be successful" do
      get 'station'
      response.should be_success
    end
  end

  describe "GET 'usage'" do
    it "should be successful" do
      get 'usage'
      response.should be_success
    end
  end

  describe "GET 'manufacturer_tx'" do
    it "should be successful" do
      get 'manufacturer_tx'
      response.should be_success
    end
  end

  describe "GET 'manufacturer_bushing'" do
    it "should be successful" do
      get 'manufacturer_bushing'
      response.should be_success
    end
  end

  describe "GET 'manufacturer_arrester'" do
    it "should be successful" do
      get 'manufacturer_arrester'
      response.should be_success
    end
  end

  describe "GET 'manufacturer_lotc'" do
    it "should be successful" do
      get 'manufacturer_lotc'
      response.should be_success
    end
  end

end
