require 'rails_helper'

describe LikesController, type: :controller do
  describe 'POST #create' do
    it "post the like" do
      posts = create(:post)
      user1 = create(:user)
      sign_in user1
      expect{
        post :create, params: {post_id: posts.id, like: attributes_for(:like)}
      }.to change(Like, :count).by(1)
    end
  end
  describe "DELETE #destroy" do
    it "delete the like" do
      user1 = create(:user)
      post1 = create(:post)
      sign_in user1
      likes = create(:like, user: user1, post: post1)
      expect {
        delete :destroy, params: {id: likes.id, post_id: post1}
      }.to change(Like, :count).by(-1)
    end
  end
end