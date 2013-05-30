# mobiles_controller_spec.rb
require "spec_helper"

describe MobilesController do
	describe "GET #index" do
		mobile = Factory(:mobile)
		get 'index'
		response.should render_template :index
		expect(response).to be_success
		expect(response.status).to eq(200)
	end
end