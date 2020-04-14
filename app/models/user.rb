class User < ApplicationRecord
  validates :name, {presence: true, length:{maximum: 5}}
  validates :email, {presence: true, uniqueness: true}
  validates :text, length: {maximum: 250}
  has_secure_password

  def posts
    return Post.where(user_id: self.id)
  end
end
