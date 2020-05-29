require 'rails_helper'

RSpec.describe Like, type: :model do
  context '全てに値が入っている場合' do
    it 'tureを返す' do
      like = build(:like)
      expect(like).to be_valid
    end
  end
end
