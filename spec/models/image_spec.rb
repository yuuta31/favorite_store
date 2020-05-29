require 'rails_helper'

RSpec.describe Image, type: :model do

  describe 'image' do
    let(:admin) { create(:admin) }
    let(:post) { create( admin.post) }
    let(:image) { create( admin.post.image) }
    context '全てに値が入っている場合' do
      it 'tureを返す' do
        image = build(:image)
        expect(image).to be_valid
      end
    end
  end

end
