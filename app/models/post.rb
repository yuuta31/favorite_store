class Post < ApplicationRecord

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  belongs_to :admin
  acts_as_taggable

  validates :name, presence: true
  validates :payment, presence: true
  validates :station, presence: true
  validates :rest_day, presence: true
  validates :place, presence: true
  validates :open_time, presence: true
  validates :store_url, presence: true
end
