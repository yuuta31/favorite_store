require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe Admin do
    it "is valid with a nickname, email, password, password_confirmation" do
      admin = build(:admin)
      expect(admin).to be_valid
    end
  end
end
