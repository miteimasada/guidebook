class User < ApplicationRecord
  has_secure_password
  validates :name,{presence: true,uniqueness: true}
  validates :email,{presence: true,uniqueness: true}
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  def posts
    return Post.where(user_id: self.id)
  end
end
