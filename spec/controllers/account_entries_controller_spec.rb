require 'spec_helper'
require 'clearance/testing'

describe AccountEntriesController do
  describe "parse_amount before filter" do
    it "parses the amount parameter" do
      sign_in

      post :create, :account_entry => { :description => "Test", :amount => "10,00" }

      AccountEntry.first.amount.should == 10.00
    end
  end

  context "a user" do
    before do
      sign_in
    end

    it "views the index" do
      get :index
      should respond_with(:success)
    end

    it "views the new" do
      get :new
      should respond_with(:success)
    end
  end

  context "a visitor" do
    it "cannot view the index" do
      get :index
      should redirect_to(:sign_in)
    end
  end
end