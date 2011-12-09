require 'spec_helper'

describe TransformerChartController do

  describe "GET 'chart'" do
    it "should be successful" do
      get 'chart'
      response.should be_success
    end
  end

end
