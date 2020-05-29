require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'comment' do
    context '全てに値が入っている場合' do
      it 'tureを返す' do
        comment = build(:comment)
        expect(comment).to be_valid
      end
    end

  end
end
