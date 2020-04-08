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
    
  end

end
