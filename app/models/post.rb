class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :likes
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
end
