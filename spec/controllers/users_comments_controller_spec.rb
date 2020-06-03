require 'rails_helper'

describe CommentsController, type: :controller do
  describe 'POST #create' do
    it "post the comment" do
      posts = create(:post)
      user1 = create(:user)
      sign_in user1
      expect{
        post :create, params: {post_id: posts.id, comment: attributes_for(:comment)}
      }.to change(Comment, :count).by(1)
    end
  end
  describe "DELETE #destroy" do
    it "delete the comment" do
      user1 = create(:user)
      post1 = create(:post)
      sign_in user1
      comments = create(:comment, user: user1, post: post1)
      expect {
        delete :destroy, params: {id: comments.id, post_id: post1}
      }.to change(Comment, :count).by(-1)
    end
  end
end