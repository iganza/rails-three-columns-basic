require 'spec_helper'

describe RootController do
  render_views
  it "responds to #index" do
    get :index
    response.should render_template("edit")
  end
end
