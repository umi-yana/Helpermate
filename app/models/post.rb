class Post < ApplicationRecord

  has_many :favorites,dependent: :destroy

  def favorite_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
