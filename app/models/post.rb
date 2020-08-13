class Post < ApplicationRecord
  validates :title, {presence: true,length: {maximum: 30}}
  validates :content, {presence: true}
  validates :user_id, {presence: true}
  has_many :likes, dependent: :destroy

  def user
    return User.find_by(id: self.user_id)
  end

end
