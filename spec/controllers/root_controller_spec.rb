require 'spec_helper'

describe RootController do
  it "responds to #index" do
    get :index
    assert_response :success
  end

  it "returns default css stylesheet" do
    get :index
    
  end
end
