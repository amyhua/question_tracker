require 'spec_helper'

describe QuestionsController do

  describe "GET 'name:string'" do
    it "returns http success" do
      get 'name:string'
      response.should be_success
    end
  end

  describe "GET 'description:string'" do
    it "returns http success" do
      get 'description:string'
      response.should be_success
    end
  end

end
