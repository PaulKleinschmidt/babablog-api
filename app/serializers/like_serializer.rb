class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :post

  # def post
  #   object.post.id
  # end

  def user
    object.user.id
  end
end
