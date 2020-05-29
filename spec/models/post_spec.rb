require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'post' do
    let(:admin) { create(:admin) }
    let(:post) { create( admin.post) }
    context '全てに値が入っている場合' do
      it 'tureを返す' do
        post = build(:post)
        expect(post).to be_valid
      end
    end
    context '全てに値が入っていない場合' do
      it 'falseを返す' do
        post = build(:post, name: nil)
        post.valid?
        expect(post.errors[:name]).to include("を入力してください")
      end
    end

  end

end
