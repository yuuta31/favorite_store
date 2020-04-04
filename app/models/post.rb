class Post < ApplicationRecord

  has_many :images, dependent: :delete_all
  belongs_to :admin
  acts_as_taggable
end
