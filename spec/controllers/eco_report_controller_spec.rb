require 'spec_helper'

describe EcoReportController do

  describe "GET 'report'" do
    it "should be successful" do
      get 'report'
      response.should be_success
    end
  end

end
