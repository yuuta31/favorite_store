require 'rails_helper'

describe BookmarksController, type: :controller do
  describe 'POST #create' do
    it "post the bookmark" do
      posts = create(:post)
      user1 = create(:user)
      sign_in user1
      expect{
        post :create, params: {post_id: posts.id, comment: attributes_for(:bookmark)}
      }.to change(Bookmark, :count).by(1)
    end
  end
  describe "DELETE #destroy" do
    it "delete the bookmark" do
      user1 = create(:user)
      post1 = create(:post)
      sign_in user1
      bookmarks = create(:bookmark, user: user1, post: post1)
      expect {
        delete :destroy, params: {id: bookmarks.id, post_id: post1}
      }.to change(Bookmark, :count).by(-1)
    end
  end
end