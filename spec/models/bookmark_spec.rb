require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  context '全てに値が入っている場合' do
    it 'tureを返す' do
      bookmark = build(:bookmark)
      expect(bookmark).to be_valid
    end
  end
end
