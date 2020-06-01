require 'rails_helper'

describe PostsController do
  describe 'GET #show' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :show, params: { id: post.id }
      expect(assigns(:post)).to eq post
    end
    it "renders the :show templete" do
      post = create(:post)
      get :show, params: { id: post.id }
      expect(response).to render_template :show
    end
  end

  describe 'GET #index' do
    it "renders the :index templete" do
      post = create(:post)
      get :index
      expect(response).to render_template :index
    end
  end
end