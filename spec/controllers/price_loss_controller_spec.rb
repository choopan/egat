require 'spec_helper'

describe PriceLossController do

  describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
    end
  end

end
