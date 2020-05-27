require 'rails_helper'

RSpec.describe "Informations", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/informations/index"
      expect(response).to have_http_status(:success)
    end
  end

end
