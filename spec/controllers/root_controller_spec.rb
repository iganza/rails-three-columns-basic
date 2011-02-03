require 'spec_helper'

describe RootController do
  render_views

  it "responds to #index" do
    get :index
    assert_response :success
  end

  it "#index returns default html and required divs" do
    get :index
    ["html", "head", "body"].each{|o| response.should have_tag(o)}
    ["container", "top", "left_nav", "right_nav", "content", "footer"].each do |o|
      response.should have_tag("div#" << o)
    end
  end
end
