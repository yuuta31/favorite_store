class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  has_many :posts, dependent: :destroy
  has_many :bookmarks, dependent: :destroy 
  has_many :bookmark_posts, through: :bookmarks, source: :post

  validates :nickname, presence: true,length: { maximum: 6 }
  validates :image, uniqueness: true, allow_nil: true

  def already_liked?(post)
    likes.exists?(post_id: post.id)
  end

  def already_booked?(post)
    bookmarks.exists?(post_id: post.id)
  end

end
